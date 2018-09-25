# Create a 10x10 matrix to represent connections between people on social media (random seed=100)
# Label the people [A..J], with named rows and columns.
# Randomly populate the matrix with 1s and 0s. 
# The number 1 means someone follows/is followed by another person.  
# Ensure that all diagonals are 0 (you should use an appropriate R matrix operation for this)


# Each row contains information on the people a person follows. 
# Each column contains information on who follows a person. 

set.seed(100)

s <- sample(0:1,100,replace = T)

m <- matrix(s,nrow = 10)

rownames(m) <- LETTERS[1:10]
colnames(m) <- LETTERS[1:10]


diag(m) <- 0

follows <- apply(m,1,sum)

followed_by <- apply(m,2,sum)

