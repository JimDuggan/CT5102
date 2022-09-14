# So that we all get the same answer
set.seed(220913)

# The number of 2 dice throws
N = 1000

# Throw dice number 1 and 2
d1 <- sample(1:6,N,replace = T)
d2 <- sample(1:6,N,replace = T)

# Sum the two throws
res <- d1 + d2

# Subset  the vector to include all
# values greater than the median

gt_med <- res[res > median(res)]