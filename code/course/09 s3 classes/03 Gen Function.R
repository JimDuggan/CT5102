f <- function(o){
  browser()
  UseMethod("f1")
}

f1.a <- function(o){
  cat("This is f.a\n")
}

f.b <- function(o){
  cat("This is f.b\n")
}

f.default <- function(o){
  cat("This is f.default\n")
}

