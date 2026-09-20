# ============================================================
# Sequence and Genomic Annotation Analysis of EGFR Using R
# ============================================================

# Load required packages
library(Biostrings)
library(GenomicRanges)
library(AnnotationDbi)
library(org.Hs.eg.db)
library(rentrez)

# ------------------------------------------------------------
# 1. Define gene information
# ------------------------------------------------------------

gene_symbol <- "EGFR"
accession <- "NM_005228"

# ------------------------------------------------------------
# 2. Retrieve EGFR sequence from NCBI
# ------------------------------------------------------------

egfr_seq <- entrez_fetch(
  db = "nuccore",
  id = accession,
  rettype = "fasta",
  retmode = "text"
)

# Save sequence as FASTA file
writeLines(egfr_seq, "egfr.fasta")

# ------------------------------------------------------------
# 3. Read FASTA sequence
# ------------------------------------------------------------

egfr <- readDNAStringSet("egfr.fasta")

cat("EGFR sequence length:", width(egfr), "bp\n")

# ------------------------------------------------------------
# 4. Extract first 30 bases
# ------------------------------------------------------------

first_30_bases <- subseq(egfr, start = 1, end = 30)

cat("First 30 bases:\n")
print(first_30_bases)

cat("First 30 bases as character:\n")
print(as.character(first_30_bases))

# ------------------------------------------------------------
# 5. Count ATG patterns
# ------------------------------------------------------------

atg_count <- vcountPattern("ATG", egfr)

cat("Number of ATG patterns:", atg_count, "\n")

# ------------------------------------------------------------
# 6. Generate reverse complement
# ------------------------------------------------------------

reverse_complement <- reverseComplement(first_30_bases)

cat("Reverse complement:\n")
print(reverse_complement)

cat("Reverse complement as character:\n")
print(as.character(reverse_complement))

# ------------------------------------------------------------
# 7. Represent EGFR genomic coordinates
# ------------------------------------------------------------

egfr_gr <- GRanges(
  seqnames = "chr7",
  ranges = IRanges(
    start = 55019017,
    end = 55211628
  ),
  strand = "+"
)

cat("EGFR Genomic Range:\n")
print(egfr_gr)

cat("Genomic width:", width(egfr_gr), "bp\n")

# ------------------------------------------------------------
# 8. Retrieve EGFR gene annotation
# ------------------------------------------------------------

egfr_annotation <- select(
  org.Hs.eg.db,
  keys = gene_symbol,
  columns = c("ENTREZID", "GENENAME"),
  keytype = "SYMBOL"
)

cat("EGFR Gene Annotation:\n")
print(egfr_annotation)

# ------------------------------------------------------------
# 9. Summary
# ------------------------------------------------------------

cat("\n================ EGFR SUMMARY ================\n")
cat("Gene Symbol:", gene_symbol, "\n")
cat("Accession:", accession, "\n")
cat("Sequence Length:", width(egfr), "bp\n")
cat("ATG Count:", atg_count, "\n")
cat("Chromosome: chr7\n")
cat("Start: 55019017\n")
cat("End: 55211628\n")
cat("Strand: +\n")
cat("Entrez ID: 1956\n")
cat("Gene Name: epidermal growth factor receptor\n")
cat("================================================\n")

getwd()
list.files()