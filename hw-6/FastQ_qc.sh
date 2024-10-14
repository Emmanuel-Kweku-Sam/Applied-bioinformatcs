

# Set trace
set -xue

# SRR number
SRR=SRR2033984

# Number of reads to sample 
N=10000

# Output read names
R1=reads/${SRR}_1.fastq
R2=reads/${SRR}_2.fastq

# Trimmed read names
T1=reads/${SRR}_1_trimmed.fastq
T2=reads/${SRR}_2_trimmed.fastq

# The reads directory
RDIR=reads

# The reports directory
RPDIR=reports

# Make the directories
mkdir -p ${RDIR} ${RPDIR}

# Download the FastQ files from SRA
fastq-dump -X ${N} --split-files -O ${RDIR} ${SRR}

# Run FastQC on the raw reads to visualize the quality
fastqc -q -o ${RPDIR} ${R1} ${R2}

# Run fastp to trim the reads
fastp -i ${R1} -o ${T1} -I ${R2} -O ${T2}

# Run FastQC on the trimmed reads to visualize the quality
fastqc -q -o ${RPDIR} ${T1} ${T2}

# Open the FastQC reports for trimmed reads (optional)
open ${RPDIR}/${SRR}_1_trimmed_fastqc.html
open ${RPDIR}/${SRR}_2_trimmed_fastqc.html