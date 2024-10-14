

#### make usage 

```bash
usage:
	@echo "usage - Print this help"
	@echo "genome - Download the genome"
	@echo "simulate - Simulate reads for the genome"
	@echo "download - Download reads from SRA"
	@echo "trim - Trim reads using fastp"
	@echo "qc - Run FastQC on trimmed reads"
```

#### make genome 
```bash
genome:
	wget $(ACC) -P /Users/ejs6694/Downloads
	gunzip -c /Users/ejs6694/Downloads/GCF_000005845.2_ASM584v2_genomic.fna.gz > $(GENOME)
```

#### make simulate 

```bash
simulate:
	mkdir -p hw-5
	wgsim -N $(N) -1 $(L) -2 $(L) -r 0 -R 0 -X 0 $(GENOME) $(R1) $(R2)
	seqkit stats $(R1) $(R2)
	gzip $(R1)
	gzip $(R2)
```

#### make download 

```bash
ownload:
	fastq-dump --split-files $(SRR)
```


#### make raw_qc

```bash
raw_qc:
	fastqc $(SRR)_1.fastq $(SRR)_2.fastq
	open $(SRR)_1_fastqc.html
	open $(SRR)_2_fastqc.html	
```

#### make trim 

```bash
trim:
	fastp -i $(SRR)_1.fastq -o $(SRR)_1_trimmed.fastq -I $(SRR)_2.fastq -O $(SRR)_2_trimmed.fastq
```

#### make qc

```bash
qc:
	fastqc $(SRR)_1_trimmed.fastq $(SRR)_2_trimmed.fastq
	open $(SRR)_1_trimmed_fastqc.html
	open $(SRR)_2_trimmed_fastqc.htmlq
```

