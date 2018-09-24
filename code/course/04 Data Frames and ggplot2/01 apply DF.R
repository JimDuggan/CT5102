library(ggplot2)

# get the average of each column

apply(mtcars,2,mean)

# test to see the order in which data is processed

apply(mtcars,2,function(x){
  browser()
  mean(x)
})
