#有些包不翻墙很难安装
#又有些在cran上已经不存在的包如Rgraphviz，常规方式安装不了

#3.5及以上的R已经不支持以下方式
source("http://bioconductor.org/biocLite.R") 
biocLite("Rgraphviz")
#可以用Bioconductor包安装其他包
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("Rgraphviz")
library(Rgraphviz)
