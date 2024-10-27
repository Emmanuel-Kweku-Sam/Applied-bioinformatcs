# Variables
SRR = SRR2033984
GENOME_ACC = ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz
GENOME = GCF_000005845.2_ASM584v2_genomic.fna
R1 = $(SRR)_1.fastq
R2 = $(SRR)_2.fastq
T1 = $(SRR)_1_trimmed.fastq
T2 = $(SRR)_2_trimmed.fastq

.PHONY: usage genome download index align stats 1 2 3 4 5

usage:
	@echo "Usage:"
	@echo "  make genome   - Download the E. coli genome"
	@echo "  make download - Download SRA reads"
	@echo "  make index    - Index the reference genome"
	@echo "  make align    - Align trimmed reads to the genome"
	@echo "  make stats    - Generate alignment statistics"
	@echo "  make 1       - Q1: How many reads did not align?"
	@echo "  make 2       - Q2: Primary, secondary, supplementary alignments"
	@echo "  make 3       - Q3: Properly paired reverse reads in the first pair"
	@echo "  make 4       - Q4: Create BAM with filtered alignments"
	@echo "  make 5       - Q5: Compare flagstats of BAM files"

genome:
	wget -N $(GENOME_ACC)
	gunzip -f $(GENOME).gz

download: $(R1) $(R2)

$(R1) $(R2):
	fastq-dump --split-files $(SRR)

index: genome
	samtools faidx $(GENOME)

align: $(SRR)_aligned.bam

$(SRR)_aligned.bam: $(T1) $(T2) index
	bwa index $(GENOME)
	bwa mem $(GENOME) $(T1) $(T2) | samtools view -bS - | samtools sort -o $(SRR)_aligned.bam
	samtools index $(SRR)_aligned.bam

stats: $(SRR)_aligned.bam
	samtools flagstat $(SRR)_aligned.bam > $(SRR)_alignment_stats.txt
	cat $(SRR)_alignment_stats.txt

1:
	grep '0 mapped' $(SRR)_alignment_stats.txt

2:
	@echo "Primary alignments:"
	samtools view -c -F 0x900 $(SRR)_aligned.bam
	@echo "Secondary alignments:"
	samtools view -c -f 0x100 $(SRR)_aligned.bam
	@echo "Supplementary alignments:"
	samtools view -c -f 0x800 $(SRR)_aligned.bam

3:
	@echo "Properly paired reverse reads (first in pair):"
	samtools view -c -f 0x41 $(SRR)_aligned.bam

4: filtered.bam

filtered.bam: $(SRR)_aligned.bam
	samtools view -b -h -q 10 -f 0x2 $(SRR)_aligned.bam > filtered.bam
	samtools index filtered.bam

5:
	samtools flagstat $(SRR)_aligned.bam > original_flagstat.txt
	samtools flagstat filtered.bam > filtered_flagstat.txt
	diff original_flagstat.txt filtered_flagstat.txt
