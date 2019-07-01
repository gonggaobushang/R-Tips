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

#有些包已经安装了但有时候library会失败，如dplyr
#这时候可以进入默认工作目录-R\win-library\3.6（版本号），
#把原本的dplyr包删除，重新安装
