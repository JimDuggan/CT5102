`second<-` <- function(y, value) {
  x[2] <- value
  x
}
x <- 1:10
second(x) <- 5L
x