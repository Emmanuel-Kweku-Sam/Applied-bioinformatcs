#### Download data from SRA

```bash
fastq-dump --split-files SRR30895571
```

#### Run FastQC on raw reads

```bash
fastqc SRR30895571_1.fastq SRR30895571_2.fastq
```
# Step 3: Trim reads with Trimmomatic

```bash
trimmomatic PE SRR30895571_1.fastq SRR30895571_2.fastq \
SRR30895571_1_paired.fq.gz SRR30895571_1_unpaired.fq.gz \
SRR30895571_2_paired.fq.gz SRR30895571_2_unpaired.fq.gz \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:20 MINLEN:36
```

# Step 4: Run FastQC on cleaned reads

```bash
fastqc SRR30895571_1_paired.fq.gz SRR30895571_2_paired.fq.gz
```

#### Compare the fastqc reports before and after trimming


