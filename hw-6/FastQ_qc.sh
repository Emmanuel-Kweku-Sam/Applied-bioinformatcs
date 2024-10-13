#### Download data from SRA
```bash
fastq-dump --split-files SRR2033984 
```

#### Run FastQC 
```bash
fastqc SRR2033984_1.fastq SRR2033984_2.fastq
```

#### Check file 
```bash
open SRR2033984_1_fastqc.html
open SRR2033984_2_fastqc.html
```

# Step 3: Trim reads usinf fastp

```bash
fastp -i SRR2033984_1.fastq -o SRR2033984_1_trimmed.fastq -I SRR2033984_2.fastq -O SRR2033984_2_trimmed.fastq
```

# Step 4: Run FastQC on trimmed file 

```bash
fastqc SRR2033984_1_trimmed.fastq SRR2033984_2_trimmed.fastq
```
#### Check file 
```bash
open SRR2033984_1_trimmed_fastqc.html
open SRR2033984_2_trimmed_fastqc.html
```

