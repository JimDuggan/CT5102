library(sloop)

v <- sample(1:9,9)

m <- matrix(v, nrow = 3)

typeof(m)

attr(m,"class")

sloop::otype(m)



