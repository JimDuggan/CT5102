# So that we all get the same answer
set.seed(220913)

# The number of 2 dice throws
N = 1000

# Throw dice number 1 and 2
d1 <- sample(1:6,N,replace = T)
d2 <- sample(1:6,N,replace = T)

# Sum the two throws
res <- d1 + d2

# Call the table function
t1 <- table(res)

ans <- t1 /N


# Extra...
# Count the number of sevens using ==
sum(res==7)

