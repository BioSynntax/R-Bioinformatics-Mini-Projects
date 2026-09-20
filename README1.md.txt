# BRCA1 Sequence and Genomic Annotation Analysis Using R

## Project Overview

This mini-project demonstrates the analysis of the **BRCA1 gene sequence and genomic information using R and Bioconductor packages**.

The project includes retrieval of the BRCA1 nucleotide sequence from NCBI, sequence analysis, reverse-complement generation, genomic coordinate representation, and gene annotation.

## Gene Information

| Feature       | Information                 |
| ------------- | --------------------------- |
| Gene          | BRCA1                       |
| Accession     | NM_007294                   |
| Chromosome    | chr17                       |
| Strand        | -                           |
| Genomic Start | 43,044,295                  |
| Genomic End   | 43,125,483                  |
| Genomic Width | 81,189 bp                   |
| Entrez ID     | 672                         |
| Gene Name     | BRCA1 DNA repair associated |

## Analysis Performed

The following analyses were performed:

1. Retrieved the BRCA1 nucleotide sequence using the NCBI database.
2. Saved the sequence in FASTA format.
3. Read and processed the FASTA sequence using **Biostrings**.
4. Determined the nucleotide sequence length.
5. Extracted the first 30 nucleotides.
6. Counted the occurrence of the **ATG** sequence.
7. Generated the reverse complement of the first 30 nucleotides.
8. Represented the genomic coordinates using **GenomicRanges**.
9. Retrieved BRCA1 gene annotation using **org.Hs.eg.db** and **AnnotationDbi**.

## Results

* Sequence length: **7088 nt**
* First 30 bases: `GCTGAGACTTCCTGGACGGGGGACAGGCTG`
* ATG count: **140**
* Reverse complement of first 30 bases: `CAGCCTGTCCCCCGTCCAGGAAGTCTCAGC`
* Genomic width: **81,189 bp**
* Entrez Gene ID: **672**

## R Packages Used

* `Biostrings`
* `GenomicRanges`
* `AnnotationDbi`
* `org.Hs.eg.db`
* `rentrez`

## Files

```text
BRCA1_analysis.R   # R script containing the complete analysis
brca1.fasta        # Retrieved BRCA1 nucleotide sequence
README.md          # Project documentation
```

## Learning Outcomes

This project provides practical experience in:

* Retrieval of biological sequences using R
* FASTA file handling
* DNA sequence analysis
* Reverse-complement analysis
* Pattern searching in nucleotide sequences
* Genomic coordinate representation
* Gene annotation using Bioconductor
* Reproducible bioinformatics workflows in R

## Author

**Nandini Singh**

MSc Bioinformatics & Computational Biology
