# This is a generic function
g <- function(o){
  UseMethod("g")
}

g.a <- function(o){
  cat("This is function g.a\n")
}

g.b <- function(o){
  cat("This is function g.b\n")
}


g.b1 <- function(o){
  cat("This is function g.b1\n")
}

g.default <- function(o){
  cat("This is function g.default\n")
}