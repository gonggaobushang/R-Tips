source("http://bioconductor.org/biocLite.R") 
biocLite("Rgraphviz")




if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Rgraphviz")
library(Rgraphviz)