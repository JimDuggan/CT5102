evens <- function(v){
  return(v[v %% 2 == 0])
  0
}

my_unique <- function (v){
  v[!duplicated(v)]
}

set.seed(100)

s <- sample(1:10,10000,replace = T)

duplicated(s)
