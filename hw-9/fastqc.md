#### Assignment 9

#### Data 
   - **Organism**: *Escherichia coli*
   - **SRA Accession**: SRR2033984

#### Download data from SRA
```bash
make download
```

#### Trim Reads
```bash
make index
```
#### align 
```bash
make align
```

#### stats
```bash
make stats
```

#### Question 1 
```bash
make 1
```

#### Question 2 
```bash
make 2
```

#### Question 3
```bash
make 3
```

#### Question 4 
```bash
make 4
```

#### Question 5 
```bash
make 5
```

#### stats
```bash
make run_all
```

#### stats
```bash
samtools flagstat $(SRR)_aligned.bam > original_flagstat.txt
samtools flagstat filtered.bam > filtered_flagstat.txt
diff original_flagstat.txt filtered_flagstat.txt
```

> 4120 + 0 supplementary
7,14c7,14
< 3410926 + 0 mapped (77.00% : N/A)
< 3404074 + 0 primary mapped (76.96% : N/A)
< 4422968 + 0 paired in sequencing
< 2211484 + 0 read1
< 2211484 + 0 read2
< 3327964 + 0 properly paired (75.24% : N/A)
< 3348882 + 0 with itself and mate mapped
< 55192 + 0 singletons (1.25% : N/A)
> 3291287 + 0 mapped (100.00% : N/A)
> 3287167 + 0 primary mapped (100.00% : N/A)
> 3287167 + 0 paired in sequencing
> 1643667 + 0 read1
> 1643500 + 0 read2
> 3287167 + 0 properly paired (100.00% : N/A)
> 3287167 + 0 with itself and mate mapped
