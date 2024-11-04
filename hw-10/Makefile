SHELL := /bin/bash


# Variables
SRR = SRR2584863
GENOME_ACC = ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/000/005/845/GCF_000005845.2_ASM584v2/GCF_000005845.2_ASM584v2_genomic.fna.gz
GENOME = GCF_000005845.2_ASM584v2_genomic.fna
R1 = $(SRR)_1.fastq.gz
R2 = $(SRR)_2.fastq.gz
BAM = $(SRR)_aligned.bam
VCF = $(SRR)_variants.vcf.gz

.PHONY: usage genome download index align call_variants clean

# Run all 
all: genome download index align call_variants variant_stats 

# Usage information
usage:
	@echo "Usage:"
	@echo "  make genome          - Download the E. coli genome"
	@echo "  make download        - Download SRA reads (first 100,000 reads)"
	@echo "  make index           - Index the reference genome"
	@echo "  make align           - Align reads to the genome and generate BAM file"
	@echo "  make call_variants   - Call variants to produce VCF file"
	@echo "  make clean           - Clean up intermediate files"

# Download genome
genome:
	wget -N $(GENOME_ACC)
	gunzip -f $(GENOME).gz

# Download data
download: $(R1) $(R2)

$(R1) $(R2):
	fastq-dump --split-files --gzip $(SRR)

# Index  genome
index: genome
	samtools faidx $(GENOME)

# Align reads and obtain a BAM file
align: $(BAM)

$(BAM): $(R1) $(R2) index
	bwa index $(GENOME)
	bwa mem $(GENOME) <(gunzip -c $(R1)) <(gunzip -c $(R2)) | samtools view -bS - | samtools sort -o $(BAM)
	samtools index $(BAM)

# Call variants u
call_variants: $(VCF)

$(VCF): $(BAM) $(GENOME)
	bcftools mpileup -Ou -f $(GENOME) -Q 10 $(BAM) | bcftools call -c -Oz -o $(VCF)
	bcftools index $(VCF)

# Clean files
clean:
	rm -f $(R1) $(R2) $(GENOME).gz $(BAM) $(BAM).bai
	rm -f $(VCF) $(VCF).csi


# variant statistics
variant_stats: $(VCF)
	bcftools stats $(VCF) > $(SRR)_variant_stats.txt
