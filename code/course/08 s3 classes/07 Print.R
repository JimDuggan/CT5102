#Find a way to “override” 
#the print function for a 
#vector object so that it prints a 
#summary of the vector when it is 
#called (using the summary() function).

v <- 1:10

class(v) <- "galway"

print.galway <- function(o){
  print(summary(o))
}
