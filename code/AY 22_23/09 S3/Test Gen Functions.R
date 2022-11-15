# This is a generic function
g <- function(o){
  UseMethod("g1")
}

g.a <- function(o){
  cat("This is function g.a\n")
}

g1.b <- function(o){
  cat("This is function g.b\n")
}


g1.b1 <- function(o){
  cat("This is function g.b1\n")
}

g1.default <- function(o){
  cat("This is function g.default\n")
}