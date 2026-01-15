Author: Farah Mohamed Elemam > Role:Biochemist & Bioinformatics Researcher 

Phylogenetic Analysis of OLR1 Orthologs

This repository contains data and R scripts for performing a phylogenetic analysis of OLR1 ortholog sequences.

 Project Overview
The analysis includes:
- Multiple Sequence Alignment (MSA) of OLR1 protein sequences
- Calculation of pairwise identity distances
- Construction of a Neighbor-Joining phylogenetic tree

Requirements
To run the analysis, you need the following R packages:
- msa
- seqinr
- ape

You can install them using:
R
install.packages("seqinr")
install.packages("ape")
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("msa")

Usage
-Place your OLR1 FASTA sequences in a file, e.g., OLR1_sequences.fasta.
-Edit the R script to point to your FASTA file:
mySequenceFile ="C:/Users/HP/Downloads/R/(OLR1_multi.fasta)"
-Run the script OLR1_phylogenetic.R in RStudio or R console.

Example of Script Workflow
-Read sequences
-Perform MSA
-Save alignment as PDF
-Calculate pairwise distances
-Construct and plot a phylogenetic tree

Output
-alignment.pdf: visualized multiple sequence alignment
-Phylogenetic tree plotted in R

Notes
Make sure all required packages are installed before running the script.
The tree is constructed using the Neighbor-Joining method based on identity distances.
Place your OLR1 FASTA sequences in a file, e.g., OLR1_sequences.fasta.
Edit the R script to point to your FASTA file


Connect  
- LinkedIn: https://www.linkedin.com/in/farah-elemam-107969323









