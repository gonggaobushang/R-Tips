# https://mp.weixin.qq.com/s/4t3I88Ddqp3wCMCG0BbeOw
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
