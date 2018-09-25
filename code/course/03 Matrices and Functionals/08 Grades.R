set.seed(10)
N=10

cs1 <- rnorm(N,72,10)
cs2 <- rnorm(N,65,7)
cs3 <- rnorm(N,80,9)
cs4 <- rnorm(N,55,7)
cs5 <- rnorm(N,61,5)

m <-cbind(cs1, cs2, cs3, cs4, cs5)

m <- cbind(m, avr=apply(m,1,mean))
