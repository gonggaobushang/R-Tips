#设置一个进度条
library(tcltk2)  
u <- 1:4000  
#开启进度条  
pb <- tkProgressBar("左上角的标题","中间，达到%", 0, 333)  
for(i in u) {  
     info<- sprintf("运行后就会改变 %d%%", round(i*100/length(u)))  
     setTkProgressBar(pb, i*50/length(u), sprintf("小角落也变了 (%s)",info), info)  
  }     
#关闭进度条  
close(pb) 
