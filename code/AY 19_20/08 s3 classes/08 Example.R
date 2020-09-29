v <- 1:10

class(v) <- "x"

`<.x` <- function(x,v){
  x > v
}

