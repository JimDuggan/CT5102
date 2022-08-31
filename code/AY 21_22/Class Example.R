summary.my_lm <- function(o){
  
  cat("Hello world")
  
  class(o) <- class(o)[-1]
  summary(o)
  
}