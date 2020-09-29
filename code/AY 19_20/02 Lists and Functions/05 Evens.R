evens <- function(v){
  v[v %% 2 == 0]
}

simplify <- function (v){
  sort(v[!duplicated(v)])
}