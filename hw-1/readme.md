Lecture 1

3- output

### Doctor! Doctor! Give me the news.
### Checking symptoms ...
### bwa           ... OK
### datamash      ... OK
### fastqc -h     ... OK
### hisat2        ... OK
### featureCounts ... OK
### efetch        ... OK
### esearch       ... OK
### samtools      ... OK
### fastq-dump    ... OK
### bowtie2       ... OK
### bcftools      ... OK
### seqtk         ... OK
### seqkit        ... OK
### bio           ... OK
### fastq-dump -X 1 -Z SRR1553591 ... OK
### You are doing well, Majesty!

5. Version 1.2

6. https://github.com/Emmanuel-Kweku-Sam/Applied-bioinformatcs.git


Lecture 2 

1. 
rsync 
This is a copy method that allows the transfer and synchronization of files and directories between different locations. It is particularly useful for making backups, deploying websites, and keeping directories synchronized across different systems.

2.
The "--exclude" flag allows the skipping of specific files or directories during transfer, thus helping with the transfer of only relevant datasets.

3.
The '-lh' flags list the files in long format and make the file sizes more readable

4.
The "-i" flag makes the rm command ask for confirmation before removing each file, ensuring that you don’t accidentally delete important files.

5.
Command to Create Nested Directory Structure and Files:
mkdir -p research/{experiments/{trial1,trial2},analysis/{results,logs},documentation} && touch research/experiments/trial1/setup.txt research/experiments/trial2/notes.txt research/analysis/results/summary.csv research/analysis/logs/error_log.txt research/documentation/project_overview.md

6.
Absolute Path: /Users/ejs6694/research/analysis/results/summary.csv
Relative Path: analysis/results/summary.csv

7.
Home Directory Shortcut: cd ~ 
 Current Directory Shortcut: . 
 Parent Directory Shortcut: .. 

 