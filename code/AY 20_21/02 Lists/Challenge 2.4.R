# Write an R function that filters a vector to return 
# all the even numbers

f <- function(v){
  v[v %% 2 == 0]
}
