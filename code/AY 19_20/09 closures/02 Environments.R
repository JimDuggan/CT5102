f <- function (x){
  print("function f... (1) function env and (2) parent.env")
  print(environment())
  print(parent.env(environment()))
  x^2
}


f1 <- function(x){
  print("function f1... (1) function env and (2) parent.env")
  print(environment())
  print(parent.env(environment()))
  
  function (y){
    print("function y... (1) function env and (2) parent.env")
    print(environment())
    print(parent.env(environment()))
    y*x
  }
}

f2 <- function(x){
  counter <- 0
  print("function f1... (1) function env and (2) parent.env")
  print(environment())
  print(parent.env(environment()))
  
  function (y){
    counter <<- counter+1
    print("function y... (1) function env and (2) parent.env")
    print(environment())
    print(parent.env(environment()))
    print(counter)
    y*x
  }
}


y <- f(2)
print(environment())
