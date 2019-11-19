h <- function(x){
  #1
  
  a <- 2 #2
  
  x + a
  
  print(environment())
  print(parent.env(environment()))
}

y <- h(1) #3

fn_env(h)
