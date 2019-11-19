library(nycflights13)

my_f <- flights

f1 <- function(){
  dim(my_f)
}

f2 <- function(){
  my_f$year <<- NULL
  dim(my_f)
}
