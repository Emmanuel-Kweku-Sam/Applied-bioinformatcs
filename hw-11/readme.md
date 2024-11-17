
Assignment 11

This report summarizes the process of evaluating the effects of variants found in a VCF file generated from sequencing data (SRR2584863). The workflow includes aligning reads to a reference genome, calling variants, and predicting the effects of these variants using tools like VEP and SnpEff.


#### Download genome

```bash
make genome 
```

#### Download SRA reads

```bash
make download
```

#### Index

```bash
make index
```

#### Align

```bash
make align
```

#### call variants 

```bash
make call_variants
```
#### call variants 

```bash
make variant_stats
```
#### Run Variant Effect Prediction

```bash
make vep
```
#### Run Variant Effect Prediction Using SnpEff

```bash
make snpeff
```
#### Run Comprehensive Variant Effect (VEP and SnpEff)

```bash
make variant_effects
```

#### Clean Up Intermediate Files

```bash
make clean
```

#### All

```bash
make all
```

####  Summary

Overview of Variant Statistics

Total variants called: 34,607 SNPs, 278 indels
Transition/Transversion Ratio: 2.54
Multiallelic Sites: 8 (with 7 being SNPs)

Variant Effects 

High Impact Variants: Variants predicted to cause significant functional disruptions 
Moderate Impact Variants: Variants with a likely functional effect but less severe than high impact 
Low Impact Variants: Typically synonymous changes that do not alter protein function.
Modifier Variants: Variants in non-coding regions 

Findings from VEP and SnpEff

The VEP output provided detailed information on the potential consequences of each variant.
SnpEff annotations confirmed and expanded upon the VEP results, with details such as potential amino acid.
