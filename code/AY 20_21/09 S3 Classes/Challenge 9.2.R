# Find a way to “override” the print function 
# for a vector object so that it prints a 
# summary of the vector when it is called 
# (using the summary() function).

x <- 1:5

class(x)

class(x) <- "xyz"

print(x)

print.xyz <- function (o){
  print(summary(o))
}

print.xyz1 <- function (o){
  print(summary(o))
}

class(x) <- "integer"

