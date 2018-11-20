z <- 100

f <- function(x){
  function (y){
    x+y+z
  }
}


g <- f(10)

g(20)