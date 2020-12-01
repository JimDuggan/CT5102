f <- function(o){
  UseMethod("f")
}

f.a <- function(o){
  cat("Hello from f.a\n")
}

f.b <- function(o){
  cat("Hello from f.b\n")
}
