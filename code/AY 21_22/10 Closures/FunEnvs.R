gl_y <- 100

f <- function(x){
  cat("1... gl_y =",gl_y,"\n")
  gl_y <<- 999
  cat("2..gl_y =",gl_y,"\n")
  ans <- x ^ 2
  zz <<- 200
  ans
}