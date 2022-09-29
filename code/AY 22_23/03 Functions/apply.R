l_in <- list(1:4,11:14,21:24)

l_out <- lapply(l_in,sum)

l_out1 <- lapply(l_in,function(x,y){
                        sum(x)+y
},y=10)

l_out2 <- lapply(l_in,function(x){
  browser()
  sum(x)
})

l_out3 <- lapply(mtcars,function(x){
  browser()
  sum(x)
})