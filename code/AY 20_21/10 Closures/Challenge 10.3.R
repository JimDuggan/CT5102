library(ggplot2)
library(dplyr)

my_tbl <- mpg

f1 <- function(){
  my_tbl <- select(my_tbl,cty,displ)
}

f2 <- function(){
  my_tbl <<- select(my_tbl,cty,displ)
}

f1()
my_tbl

f2()
my_tbl

