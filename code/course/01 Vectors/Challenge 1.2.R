# Create an R vector of squares of 1 to 10
#   Find the minimum
#   Find the maximum
#   Find the average
#   Subset all those values greater than the average

v <- (1:10)^2

mn <- min(v)

mx <- max(v)

f <- v > mean(v)

v[f]

f1 <- v[v > mean(v)]



