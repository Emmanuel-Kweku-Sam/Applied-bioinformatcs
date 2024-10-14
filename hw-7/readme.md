#### FASTQ Quality Control Report

#### Data 
   - **Organism**: *Escherichia coli*
   - **SRA Accession**: SRR2033984
 Publication link: https://pubmed.ncbi.nlm.nih.gov/25888672/


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


#### Initial Qc 
```bash
fastqc SRR2033984_1.fastq SRR2033984_2.fastq
```

#### Report 

#### Image 1: Per base sequence quality (before trimming)
![Per base sequence quality before trimming](image_1.png)

#### Image 2: Per base sequence content (before trimming)
![Per base sequence content before trimming](image_2.png)

#### Image 3: Sequence length distribution (before trimming)
![Sequence length distribution before trimming](image_3.png)


#### Trim Reads
```bash
fastp -i SRR2033984_1.fastq -o SRR2033984_1_trimmed.fastq -I SRR2033984_2.fastq -O SRR2033984_2_trimmed.fastq
```

#### fast Qc on trimmed reads

```bash
fastqc SRR2033984_1_trimmed.fastq SRR2033984_2_trimmed.fastq
```