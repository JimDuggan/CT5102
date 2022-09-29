library(pryr)

x <- 20

where("x")

f2 <- function(a){
  x <- 1000
  a + x
}

f3 <- function(a){
  x <<- 1000
  a + x
}