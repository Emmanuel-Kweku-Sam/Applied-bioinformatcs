Assignment 7

This is a combination of script from assignment 5 and 6 in a makefile. The makefile simplifies the steps in genomic data analysis 

#### make usage : This will display help information about the different tasks the Makefile can perform
#### make genome : This will download the E. coli genome
#### make simulate: This will simulate reads for the genome
#### make download: This will download reads from SRA
#### make raw_qc: This will run FastQC on the raw reads
#### make trim: This will trim the reads using fastp
#### make qc: This will run FastQC on the trimmed reads




### How to run files 

#### Download genome

```bash
make genome 
```

#### simulate reads 

```bash
make simulate
```

#### Download SRA reads

```bash
make download
```

#### QC raw reads

```bash
make raw_qc:
```

#### Trim reads

```bash
make trim
```

#### Qc trimmed reads

```bash
make qc
```

