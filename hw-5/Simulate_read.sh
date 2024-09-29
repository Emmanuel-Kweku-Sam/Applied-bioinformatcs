
# Read simulation with wgsim for E. coli genome

# Set the trace for debugging
```bash
set -uex
```

# Compressed genome file
```bash
Compressed_genome=/Users/ejs6694/Downloads/GCF_000005845.2_ASM584v2_genomic.fna.gz  
```
# Uncompressed genome 
```bash
Unzipped_genome=/Users/ejs6694/Downloads/GCF_000005845.2_ASM584v2_genomic.fna
```
# Unzip the genome file
```bash
gunzip -c "$Compressed_genome" > "$Unzipped_genome"
```
# Number of reads for 10x coverage

```bash
N=464000
L=100
```
# Read Files
```bash
R1=hw-5/wgsim_read1.fq
R2=hw-5/wgsim_read2.fq
```
# Simulation 

# Make the directory to hold the output reads
```bash
mkdir -p hw-5
```

# Simulate reads 
```bash
wgsim -N ${N} -1 ${L} -2 ${L} -r 0 -R 0 -X 0 ${Unzipped_genome} ${R1} ${R2}
```

# Read statistics 
```bash
seqkit stats ${R1} ${R2}
```
# Compressed files
```bash
gzip ${R1}
gzip ${R2}
```

