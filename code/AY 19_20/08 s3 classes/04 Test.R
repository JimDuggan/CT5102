v <- 1:10

class(v) <- "abc"

summary.abc <- function(o){
  cat("This is our own summary\n")
}

summary.abcde <- function(o){
  cat("This is our own summary 2\n")
}