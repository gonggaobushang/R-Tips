rm(list = ls())
library(snowfall)
library(parallel) 
detectCores(logical = F) #核个数：parallel 
sfInit(parallel = TRUE, cpus = detectCores() - 1) #启动核个数
#cl <- makeCluster(getOption("cl.cores", 3))
library(ggplot2)
t1<-data.frame(x=1:100,y=2:101)
sfLibrary(ggplot2) #载入package
sfExport("t1") #载入变量
fun <- function(ipl){
  gt1<-ggplot(t1)+geom_line(aes(x,y))+xlab(ipl)
  print(gt1)
}
sfLapply(1:10, fun) ->a
sfStop() #关闭多核

