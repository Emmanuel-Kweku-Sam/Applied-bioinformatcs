#### FASTQ Quality Control Report



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

#### 

```bash
fastqc SRR2033984_1_trimmed.fastq SRR2033984_2_trimmed.fastq
```