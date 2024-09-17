The genome for Escherichia coli UTI89 was downloaded, and the corresponding FASTA file was successfully opened in a text editor to verify its contents. The genome sequence consisted of nucleotide sequences in the proper FASTA format, starting with the header line indicating the organism and strain (screenshot labelled- Genome).




Extracting Gene Annotations from the GFF File:

The downloaded GFF file contained various features, including CDS, ribosome entry sites, and gene features etc. Using VS code, the GFF file was opened, and intervals corresponding to the "gene" feature were identified and extracted.A new file, genesonly.gff was created by isolating all the lines where the third column indicated gene, ensuring that only gene-related annotations were retained.




Loading Files in IGV 

The FASTA file and annotated file were loaded into IGV for genome visualization.IGV displayed the genome track and allowed zooming into the genome to visualize specific regions (third screenshot labelled-IGV). The gene annotations were successfully aligned with the genome, and specific genes such as "ttdT" and "tsaD" were visible upon zooming into particular regions of the genome






