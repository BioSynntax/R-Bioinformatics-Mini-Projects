if (!requireNamespace("BiocManager", quietly = TRUE)) {
  install.packages("BiocManager")
}

BiocManager::install(c(
  "Biostrings",
  "GenomicRanges",
  "AnnotationDbi",
  "org.Hs.eg.db"
))

install.packages("rentrez")
n
library(BiocManager)
BiocManager::install(c(
  "Biostrings",
  "GenomicRanges",
  "AnnotationDbi",
  "org.Hs.eg.db"
), ask = FALSE, update = FALSE)
install.packages("rentrez")
library(Biostrings)
library(GenomicRanges)
library(AnnotationDbi)
library(org.Hs.eg.db)
library(rentrez)
install.packages("rentrez")
install.packages("rentrez")
library(rentrez)
library(Biostrings)
library(GenomicRanges)
library(AnnotationDbi)
library(org.Hs.eg.db)
library(rentrez)

gene_symbol <- "BRCA1"
accession <- "NM_007294"

brca1_seq <- entrez_fetch(
  db = "nuccore",
  id = accession,
  rettype = "fasta",
  retmode = "text"
)

writeLines(brca1_seq, "brca1.fasta")

brca1 <- readDNAStringSet("brca1.fasta")

width(brca1)

first_30_bases <- subseq(
  brca1,
  start = 1,
  end = 30
)

as.character(first_30_bases)

atg_count <- vcountPattern("ATG", brca1)

atg_count


reverse_complement <- reverseComplement(first_30_bases)

as.character(reverse_complement)



brca1_gr <- GRanges(
  seqnames = "chr17",
  ranges = IRanges(
    start = 43044295,
    end = 43125483
  ),
  strand = "-"
)

brca1_gr
width(brca1_gr)


brca1_annotation <- select(
  org.Hs.eg.db,
  keys = "BRCA1",
  columns = c("ENTREZID", "GENENAME"),
  keytype = "SYMBOL"
)

brca1_annotation


getwd()

list.files()
