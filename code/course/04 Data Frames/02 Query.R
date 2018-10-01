

sapply(c("JFK","LGA","EWR"), function(x){
  s1 <- sub[sub$origin == x,]
  mean(s1[,"dep_delay"],na.rm=T)
  })

