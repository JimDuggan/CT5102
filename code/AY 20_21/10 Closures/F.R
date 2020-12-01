library(envnames)

f <- function(){
  c_env <- environment()
  p_env <- parent.env(environment())
  print(environment())
  cat("Current Environment = ",environment_name(c_env),"\n")
  cat("Parent Environment = ",environment_name( p_env),"\n")
}

g <- function(){
  x1 <- 200;
  y1 <- 1:10
  f_env <- environment()
  p_env <- parent.env(environment())
  list(f_env=f_env,p_env=p_env)
}



