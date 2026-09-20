# EGFR Sequence and Genomic Annotation Analysis Using R

## Project Overview

This mini-project demonstrates the analysis of the **EGFR gene sequence and genomic information using R and Bioconductor packages**.

The project includes retrieval of the EGFR nucleotide sequence from NCBI, sequence analysis, reverse-complement generation, genomic coordinate representation, and gene annotation.

## Gene Information

| Feature       | Information                      |
| ------------- | -------------------------------- |
| Gene          | EGFR                             |
| Accession     | NM_005228                        |
| Chromosome    | chr7                             |
| Strand        | +                                |
| Genomic Start | 55,019,017                       |
| Genomic End   | 55,211,628                       |
| Genomic Width | 192,612 bp                       |
| Entrez ID     | 1956                             |
| Gene Name     | epidermal growth factor receptor |

## Analysis Performed

The following analyses were performed:

1. Retrieved the EGFR nucleotide sequence from the NCBI database.
2. Saved the sequence in FASTA format.
3. Read and processed the FASTA sequence using **Biostrings**.
4. Determined the nucleotide sequence length.
5. Extracted the first 30 nucleotides.
6. Counted the occurrence of the **ATG** sequence.
7. Generated the reverse complement of the first 30 nucleotides.
8. Represented the genomic coordinates using **GenomicRanges**.
9. Retrieved EGFR gene annotation using **org.Hs.eg.db** and **AnnotationDbi**.

## Results

* Sequence length: **9905 nt**
* First 30 bases: `AGACGTCCGGGCAGCCCCCGGCGCAGCGCG`
* ATG count: **160**
* Reverse complement of first 30 bases: `CGCGCTGCGCCGGGGGCTGCCCGGACGTCT`
* Genomic width: **192,612 bp**
* Entrez Gene ID: **1956**

## R Packages Used

* `Biostrings`
* `GenomicRanges`
* `AnnotationDbi`
* `org.Hs.eg.db`
* `rentrez`

## Files

```text
EGFR_analysis.R   # R script containing the complete analysis
egfr.fasta        # Retrieved EGFR nucleotide sequence
README.md         # Project documentation
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
