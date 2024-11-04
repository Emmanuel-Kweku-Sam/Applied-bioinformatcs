#### Variables
SRR = SRR2033984
GENOME_ACC = ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz
GENOME = GCF_000005845.2_ASM584v2_genomic.fna
R1 = $(SRR)_1.fastq
R2 = $(SRR)_2.fastq
T1 = $(SRR)_1_trimmed.fastq
T2 = $(SRR)_2_trimmed.fastq
BAM = $(SRR)_aligned.bam
ALIGN_STATS = $(SRR)_alignment_stats.txt

#### Usage: Help information
usage:
	@echo "Usage:"
	@echo "  make genome   - Download the E. coli genome"
	@echo "  make download - Download SRA reads"
	@echo "  make raw_qc   - Run FastQC on raw reads"
	@echo "  make trim     - Trim reads using fastp"
	@echo "  make qc       - Run FastQC on trimmed reads"
	@echo "  make index    - Index the reference genome"
	@echo "  make align    - Align trimmed reads to the genome"
	@echo "  make stats    - Generate alignment statistics"
	@echo "  make all      - Run the entire pipeline"

#### Download genome
genome:
	wget -N $(GENOME_ACC)
	gunzip -f $(GENOME).gz

#### Download SRA 
download: $(R1) $(R2)

$(R1) $(R2):
	fastq-dump --split-files --max-spot 100000 --gzip $(SRR)

#### Trim reads 
trim: $(T1) $(T2)

$(T1) $(T2): $(R1) $(R2)
	fastp -i $(R1) -I $(R2) -o $(T1) -O $(T2) -h fastp_report.html

#### Index  genome
index: genome
	samtools faidx $(GENOME)

#### Align and generate BAM file
align: $(BAM)

$(BAM): $(T1) $(T2) index
	bwa index $(GENOME)
	bwa mem $(GENOME) $(T1) $(T2) | samtools view -bS - | samtools sort -o $(BAM)
	samtools index $(BAM)

#### statistics
stats: $(BAM)
	samtools flagstat $(BAM) > $(ALIGN_STATS)
	cat $(ALIGN_STATS)

#### All: Run all
all: genome download trim index align stats
