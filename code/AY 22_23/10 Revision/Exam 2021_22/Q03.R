library(aimsir17)

stat_test <- stations

class(stat_test) <- c("my_s",class(stat_test))

tail.my_s <- function(o){
  class(o) <- class(o)[-1]
  tail(o,n=3L)
}


head.my_s <- function(o){
  class(o) <- class(o)[-1]
  head(o,n=3L)
}


summary.my_lm <- function(o){
  cat("Summary Coefficients\n")
  class(o) <- class(o)[-1]
  coef(o)
}
