f <- function(x) x^2

formals(f)

body(f)

environment(f)


formals(sum)

body(sum)

environment(sum)

x <- 2
g <- function(){
  y <- 1
  c(x,y)
}

g()


j <- function(){
  if(!exists("a")){
    a <- 1
  } else{
    a <- a + 1
  }
  print(a)
}




