mysum <- function(v,...){
  sum(v,...)
}

x <- c(1,2,3,4, NA)

mysum(x)

mysum(x,na.rm=T)
