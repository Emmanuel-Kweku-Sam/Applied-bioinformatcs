
#### Read Simulation Report

#### 1. Selected Genome: Escherichia coli 

#### Download Information:
- **Genome Accession**: GCF_000005845.2
- **Organism**: *Escherichia coli* str. K-12 substr. MG1655
- **Link**: [E. coli Genome](https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz)

#### Genome Size and Chromosome Information:
- **Size of FASTA file (gzipped)**: 1.1 MB
- **Total size of the genome**: 4,641,652 bp (approximately 4.64 Mb)
- **Number of chromosomes**: 1
- **Chromosome ID**: NC_000913.3
- **Chromosome length**: 4,641,652 bp

#### 2. Read Simulation

#### Simulation Parameters:
- **Coverage**: 10x
- **Number of Reads**: 464,000
- **Read Length**: 100 bp
- **Sequencing Instrument**: Illumina (short reads)

#### FASTQ File Information:
- **File Sizes Before Compression**:
  - `wgsim_read1.fq`: 112 MB
  - `wgsim_read2.fq`: 112 MB
- **File Sizes After Compression**:
  - `wgsim_read1.fq.gz`: 22 MB
  - `wgsim_read2.fq.gz`: 22 MB
  - **Compression Savings**: ~80% saved

#### Discussion:
Using the parameters for 10x coverage, 464,000 reads were generated for eachpaired-end reads. The average read length was set to 100 bp for each read. The total size of the FASTQ files was 224 MB before compression and 44 MB after compression, showing a space saving of around 80%.

#### Same Coverage with different parameters
Yes this is because adjustment of read length alters the number of reads required to maintain the same coverage, eg, if the read length was increased to 150 bp, the number of reads needed for 10x coverage would decrease proportionally.

#### 3. Estimating Data for Other Genomes at 30x Coverage using results from E. coli

#### Yeast Genome (12 Mb genome):

- **Estimated number of reads**:  
  - (12,000,000 bp × 30) ÷ 100 bp = 3,600,000 reads
- **Estimated FASTQ file size**:  
  - (3,600,000 reads ÷ 464,000 reads) × 112 MB = 870 MB
- **Estimated compressed size**:  
  - 870 MB × 0.2 = 174 MB

#### Drosophila Genome (140 Mb genome):

- **Estimated number of reads**:  
  - (140,000,000 bp × 30) ÷ 100 bp = 42,000,000 reads
- **Estimated FASTQ file size**:  
  - (42,000,000 reads ÷ 464,000 reads) × 112 MB = 10.1 GB
- **Estimated compressed size**:  
  - 10.1 GB × 0.2 = 2.02 GB

#### Human Genome (3.2 Gb genome):

- **Estimated number of reads**:  
  - (3,200,000,000 bp × 30) ÷ 100 bp = 960,000,000 reads
- **Estimated FASTQ file size**:  
  - (960,000,000 reads ÷ 464,000 reads) × 112 MB = 256 GB
- **Estimated compressed size**:  
  - 256 GB × 0.2 = 51.2 GB

#### Conclusion

This analysis simulated 10x coverage for the *E. coli* genome and estimated 30x coverage for other genomes (Yeast, Drosophila, Human). The space-saving benefits of compression were clearly demonstrated, reducing the data size by 80%. These estimates show that larger genomes will require much larger storage space, both before and after compression.