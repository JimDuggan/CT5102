# This is a first function in R

evens <- function (v){
  # lv <- v %% 2 ==  0
  # e_v <- v[lv]
  # e_v*0
  v[v%%2 ==0]
}
evens1 <- function (v){
  list(ans=v[v%%2 ==0],
       v_size=length(v),
       o_vector=v)
}

tc <- c(1,3,5,7,22)

evens(tc)


