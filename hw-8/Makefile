#### Variables
SRR = SRR2033984
GENOME_ACC = ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz
GENOME = GCF_000005845.2_ASM584v2_genomic.fna
R1 = $(SRR)_1.fastq
R2 = $(SRR)_2.fastq
T1 = $(SRR)_1_trimmed.fastq
T2 = $(SRR)_2_trimmed.fastq

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

#### Download the E. coli genome
genome:
	wget -N $(GENOME_ACC)
	gunzip -f $(GENOME).gz

#### Download SRA reads
download: $(R1) $(R2)

$(R1) $(R2):
	fastq-dump --split-files $(SRR)

#### Run FastQC on raw reads
raw_qc: qc_reports/$(SRR)_1_fastqc.html qc_reports/$(SRR)_2_fastqc.html

qc_reports/$(SRR)_1_fastqc.html qc_reports/$(SRR)_2_fastqc.html: $(R1) $(R2)
	mkdir -p qc_reports
	fastqc $(R1) $(R2) -o qc_reports

#### Trim reads using fastp
trim: $(T1) $(T2)

$(T1) $(T2): $(R1) $(R2)
	fastp -i $(R1) -I $(R2) -o $(T1) -O $(T2) -h fastp_report.html

#### Run FastQC on trimmed reads
qc: qc_reports/$(SRR)_1_trimmed_fastqc.html qc_reports/$(SRR)_2_trimmed_fastqc.html

qc_reports/$(SRR)_1_trimmed_fastqc.html qc_reports/$(SRR)_2_trimmed_fastqc.html: $(T1) $(T2)
	mkdir -p qc_reports
	fastqc $(T1) $(T2) -o qc_reports

#### Index the reference genome
index: genome
	samtools faidx $(GENOME)

#### Align trimmed reads and generate sorted BAM file
align: $(SRR)_aligned.bam

$(SRR)_aligned.bam: $(T1) $(T2) index
	bwa index $(GENOME)
	bwa mem $(GENOME) $(T1) $(T2) | samtools view -bS - | samtools sort -o $(SRR)_aligned.bam
	samtools index $(SRR)_aligned.bam

#### Generate alignment statistics
stats: $(SRR)_aligned.bam
	samtools flagstat $(SRR)_aligned.bam > $(SRR)_alignment_stats.txt
	cat $(SRR)_alignment_stats.txt
