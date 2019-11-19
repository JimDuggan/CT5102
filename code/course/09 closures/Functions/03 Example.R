library(rlang)
y <-300

f <- function(x){
  ans <- x+y
  xyz <- 700
  ans
}

f(10)

fn_env(f)



