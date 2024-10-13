#### FASTQ Quality Control Report

#### 1. Data Download
   - **Organism**: *Escherichia coli*
   - **SRA Accession**: SRR30895571
   - **Instrument**: Illumina


#### Download data from SRA

#### Downloading the E. coli UTI89 genome FASTA file
```bash
fastq-dump --split-files SRR2033906
```

#### Report Preliminary Evaulation
```bash
fastqc SRR2033906_1.fastq SRR2033906_2.fastq
```
#### Report 

#### Image 1


![IGV Genome Visualization](image 1.png)

#### Image 2: Genome

![Genome](Per base seq.png)

#### Image 3: 

![Genes Only](Per base seq content.png)

```bash
[FastQC Report for SRR2033906_1](SRR2033906_1_fastqc.html)
[FastQC Report for SRR2033906_2](SRR2033906_2_fastqc.html)
```

### Downloading the GFF file for gene annotations

```bash
wget ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/026/625/GCF_000026625.1_ASM2662v1_genomic.gff.gz
```
### files were unzipped using the gunzip command

```bash
gunzip GCF_000026625.1_ASM2662v1_genomic.fna.gz
gunzip GCF_000026625.1_ASM2662v1_genomic.gff.gz
```

The downloaded GFF file contained various features, including CDS, ribosome entry sites, and gene features etc. Using VS code, the GFF file was opened, and intervals corresponding to the "gene" feature were identified and extracted.A new file, genesonly.gff was created by isolating all the lines where the third column indicated gene, ensuring that only gene-related annotations were retained.


Loading Files in IGV 

The FASTA file and annotated file were loaded into IGV for genome visualization.IGV displayed the genome track and allowed zooming into the genome to visualize specific regions. The gene annotations were successfully aligned with the genome, and specific genes such as "ttdT" and "tsaD" were visible upon zooming into particular regions of the genome
