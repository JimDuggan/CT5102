# Write a function that takes 
# in a vector and returns a vector 
# with no duplicates. 
# Make use of the R function duplicated()

r_dups <- function(v){
  v[!duplicated(v)]
}
data <- c(1:10,5:11)

