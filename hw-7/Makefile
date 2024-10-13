#### Makefile 

#### Variables
R1=hw-5/wgsim_read1.fq
R2=hw-5/wgsim_read2.fq
SRR=SRR2033984
ACC=ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz
GENOME=/Users/ejs6694/Downloads/GCF_000005845.2_ASM584v2_genomic.fna
N=464000
L=100

#### Usage: Help information
usage:
	@echo "usage - Print this help"
	@echo "genome - Download the genome"
	@echo "simulate - Simulate reads for the genome"
	@echo "download - Download reads from SRA"
	@echo "trim - Trim reads using fastp"
	@echo "qc - Run FastQC on trimmed reads"

#### Download genome 
genome:
	wget $(ACC) -P /Users/ejs6694/Downloads
	gunzip -c /Users/ejs6694/Downloads/GCF_000005845.2_ASM584v2_genomic.fna.gz > $(GENOME)

#### Simulate reads 
simulate:
	mkdir -p hw-5
	wgsim -N $(N) -1 $(L) -2 $(L) -r 0 -R 0 -X 0 $(GENOME) $(R1) $(R2)
	seqkit stats $(R1) $(R2)
	gzip $(R1)
	gzip $(R2)

#### Download reads from SRA 
download:
	fastq-dump --split-files $(SRR)

#### Run FastQC on raw reads
raw_qc:
	fastqc $(SRR)_1.fastq $(SRR)_2.fastq
	open $(SRR)_1_fastqc.html
	open $(SRR)_2_fastqc.html	

#### Trim reads using fastp 
trim:
	fastp -i $(SRR)_1.fastq -o $(SRR)_1_trimmed.fastq -I $(SRR)_2.fastq -O $(SRR)_2_trimmed.fastq

#### Run FastQC on trimmed reads 
qc:
	fastqc $(SRR)_1_trimmed.fastq $(SRR)_2_trimmed.fastq
	open $(SRR)_1_trimmed_fastqc.html
	open $(SRR)_2_trimmed_fastqc.html



#### how to run files

##### make usage : This will display help information about the different tasks the Makefile can perform
##### make genome : This will download the E. coli genome
##### make simulate: This will simulate reads for the genome
##### make download: This will download reads from SRA
##### make raw_qc: This will run FastQC on the raw reads
##### make trim: This will trim the reads using fastp
##### make qc: This will run FastQC on the trimmed reads
