f <- function(abc,bcd,bce){
  c(FirstArg=abc,
    SecondArg=bcd,
    ThirdArg=bce)
}

test_dot1 <- function(...){
  ar = list(...)
  str(ar)
}

evens <- function(v){
  if(length(v)==0)
    stop("Error>> exiting evens(), input vector is empty")
  else if(!is.numeric(v))
    stop("Error>> exiting evens(), input vector not numeric")
  v[v%%2==0]
}