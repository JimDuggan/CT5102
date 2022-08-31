library(ggplot2)

my_mpg <- ggplot2::mpg

f <- function(){
  my_mpg$manufacturer <<- NULL
}