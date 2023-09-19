l2 <- list(1:4,
           2:6,
           10:11)


l_out <- vector(mode="list",length=length(l2))

for(i in seq_along(l2)){
  l_out[[i]] <- max(l2[[i]])
}

l_out2 <- lapply(l2,max)


a1 <- lapply(l2,function(x){
  list(x[1])})

purrr::map(l2,~.[1])


