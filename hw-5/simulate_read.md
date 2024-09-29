
#### Genome Analysis and Read Simulation Report

#### 1. Selected Genome: Escherichia coli (E. coli)

#### Download Information:
- **Genome Accession**: GCF_000005845.2
- **Organism**: *Escherichia coli* str. K-12 substr. MG1655
- **Download Link**: [E. coli Genome](https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz)

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

#### Same Coverage with different parameters?
Yes. Adjustment of read length alters the number of reads required to maintain the same coverage. eg if the read length was increased to 150 bp, the number of reads needed for 10x coverage would decrease proportionally.

#### 3. Estimating Data for Other Genomes at 30x Coverage

Here, we estimate the size of the FASTA file, number of reads, and size of the FASTQ files before and after compression for **Yeast**, **Drosophila**, and **Human** genomes at 30x coverage, using the results from E. coli as a reference.

#### Yeast Genome (12 Mb genome):
- **Estimated number of reads**: \( \frac{12,000,000 \times 30}{100} = 3,600,000 \)
- **Estimated FASTQ file size**: \( \frac{3,600,000}{464,000} \times 112 \text{MB} \approx 870 \text{MB} \)
- **Estimated compressed size**: \( 870 \times 0.2 = 174 \text{MB} \)

#### Drosophila Genome (140 Mb genome):
- **Estimated number of reads**: \( \frac{140,000,000 \times 30}{100} = 42,000,000 \)
- **Estimated FASTQ file size**: \( \frac{42,000,000}{464,000} \times 112 \text{MB} \approx 10.1 \text{GB} \)
- **Estimated compressed size**: \( 10.1 \times 0.2 = 2.02 \text{GB} \)

#### Human Genome (3.2 Gb genome):
- **Estimated number of reads**: \( \frac{3,200,000,000 \times 30}{100} = 960,000,000 \)
- **Estimated FASTQ file size**: \( \frac{960,000,000}{464,000} \times 112 \text{MB} \approx 256 \text{GB} \)
- **Estimated compressed size**: \( 256 \times 0.2 = 51.2 \text{GB} \)

#### Conclusion

This analysis simulated 10x coverage for the *E. coli* genome and estimated 30x coverage for other genomes (Yeast, Drosophila, Human). The space-saving benefits of compression were clearly demonstrated, reducing the data size by 80%. These estimates show that larger genomes will require much larger storage space, both before and after compression.