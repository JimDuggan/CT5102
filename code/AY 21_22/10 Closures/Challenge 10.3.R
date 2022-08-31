f <- function(x, y, z){
  sum <- x + y + z
  e <- environment()
  parent <- parent.env(e)
  e
}