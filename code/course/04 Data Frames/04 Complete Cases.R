library(nycflights13)

sum(complete.cases(flights))

sum(apply(flights,1,function(r)all(!is.na(r))))


