#主要用来减少重复计算，降低CPU损耗
#用相同的参数执行计算的时候，会得到之前计算过的结果，而不是重算一遍

library(memoise)
fun <- memoise(function(x) { Sys.sleep(5); runif(1) })
system.time(print(fun()))
system.time(print(fun())) #第二次运行，不需要等待
forget(fun)
system.time(print(fun()))
