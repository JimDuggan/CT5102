
tc <- c(rep(2,3),1:5,rep(7,4))

my_unique <- function (v){
  # browser()
  dups <- duplicated(v)
  not_dups <- !dups
  v[not_dups]
  v
  # v[!duplicated(v)]
}

my_unique(tc)

max <- function(v){
  "Hello world"
}
