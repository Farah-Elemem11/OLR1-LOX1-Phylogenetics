# =======================================================================
# Phylogenetic Analysis of OLR1 Orthologs
# - Multiple Sequence Alignment (MSA)
# - Pairwise Identity Distance
# - Neighbor-Joining Phylogenetic Tree
# ======================================================================

# Load required library for Multiple Sequence Alignment (MSA)
library(msa)
# 1) Read the FASTA file containing OLR1 sequences
mySequenceFile ="C:/Users/HP/Downloads/R/(OLR1_multi.fasta)"
mysequences <- readAAStringSet(mySequenceFile)
print(head(mysequences))
# 2) Perform Multiple Sequence Alignment (MSA)
myfirstalignment =msa(mysequences)
# Print the complete alignment to see the result
print(myfirstalignment , show  ="complete")
# 3) Save the alignment as a PDF with formatting
msaPrettyPrint(myfirstalignment,
               output = "pdf", showNames = "left",
               showNumbering = "right", showConsensus = "bottom",
               askForOverwrite = FALSE , showLogo = "none",
               shadingColors = "blue" , shadingMode = "similar",
               file = "alignment.pdf")
# 4) Convert the alignment to seqinr format for distance calculation
OLR1_aln2 = msaConvert(myfirstalignment ,type = "seqinr::alignment")
# Load seqinr library for calculating sequence distances
library(seqinr)
# 5) Calculate pairwise distances using identity
d = dist.alignment(OLR1_aln2  ,"identity")
# Display the distance matrix
as.matrix(d , drop =F)
d
# Load ape library for phylogenetic tree construction
library(ape)
# Load required library for Multiple Sequence Alignment (MSA)
OLR1_Tree= nj(d)
# 7) Plot the phylogenetic tree
plot(OLR1_Tree , main = "Phylogenetic Tree of OLR1 Sequences")

