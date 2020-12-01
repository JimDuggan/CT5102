# Write a function that returns its environment
# Make sure the function creates local variables
# Explore the resulting environment

f <- function(a,b,c){
  d <- a+b+c
  print(environment())
  environment()
}

x <- f(1,2,3)
print(x)
p <- parent.env(x)



