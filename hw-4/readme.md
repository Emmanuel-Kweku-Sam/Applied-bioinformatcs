

#### Holds the URL of the genome file, making it reusable by simply changing this URL for different datasets.

```bash
GENOME_URL="ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/026/625/GCF_000026625.1_ASM2662v1_genomic.fna.gz"
```

#### The wget command downloads the  E. coli genome file using the provided URL.

```bash
wget "$GENOME_URL"
```

#### Output a success message

```bash
echo "Genome FASTA file downloaded successfully from $GENOME_URL"
```

#### Holds the URL of the genome file, making it reusable by simply changing this URL for different datasets.

```bash
GFF_URL="ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/026/625/GCF_000026625.1_ASM2662v1_genomic.gff.gz"
```

#### The wget command downloads the  E. coli gff file using the provided URL.

```bash
wget "$GENOME_URL"
```

#### Output a success message

```bash
echo "GFF annotation file downloaded successfully from $GFF_URL"
```

#### Unzipping the downloaded FASTA file

```bash
gunzip "$GENOME_FILE"
echo "Unzipped the FASTA file: $GENOME_FILE"
```

#### Unzipping the downloaded GFF file

```bash
gunzip "$GFF_FILE"
echo "Unzipped the GFF file: $GFF_FILE"
```

#### Lecture 2 

#### Extract "gene" feature from the GFF file
```bash 
grep -w "gene" GCF_000026625.1_ASM2662v1_genomic.gff > genes_only.gff
```
#### Definition of "gene":
SO Term for "gene": SO:0000704

#### Parent and Child Terms of "gene"

Parent Terms of "gene":
Biological Region (SO:0001411): Parent term

Child Terms of "gene":
Pseudogene (SO:0000336) 
Protein-coding gene (SO:0001217)
Non-coding RNA gene (SO:0001263)
Polycistronic gene (SO:0000470)
Transposable element gene (SO:0000795)


### Discussion:

The "gene" feature represents a genomic region that encodes functional transcripts. According to the Sequence Ontology (SO:0000704), the "gene" feature is a key biological region, encompassing both protein-coding and non-coding elements. Parent terms, such as "biological region" (SO:0001411), provide a more general context, while child terms like "protein-coding gene" (SO:0001217) and "pseudogene" (SO:0000336) specify particular subtypes of genes. This hierarchical structure helps standardize genetic annotations in bioinformatics databases.