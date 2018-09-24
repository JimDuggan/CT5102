library(ggplot2)

# get the average of each column

apply(mtcars,2,mean)

# test to see the order in which data is processed

a1 <- apply(mtcars,2,function(x){
  #browser()
  mean(x)
})

a2 <- lapply(mtcars,function(x){
  #browser()
  mean(x)
})

a3 <- sapply(mtcars,function(x){
  #browser()
  mean(x)
})

