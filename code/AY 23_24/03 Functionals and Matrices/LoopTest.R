set.seed(100)

l <- as.list(sample(1:100,10))

al <- unlist(l)

m <- l[[1]]


for(i in 2:length(l)){
  if(l[[i]] > m)
    m<- l[[i]]
}
