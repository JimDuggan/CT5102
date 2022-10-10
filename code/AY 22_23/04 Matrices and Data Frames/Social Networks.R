library(igraph)

# Set the number of users
N = 10
# Set the seed to ensure the matrix can be reproduced
set.seed(100)
# Sample, with replacement, 100 numbers, with 20% of a 1
v <- sample(0:1,N^2,replace = T,prob = c(0.6,.4))
# Create the matrix of 10x10
m <- matrix(v,nrow=N)

# Set the row and column names
rownames(m) <- paste0("P-",1:N)
colnames(m) <- rownames(m)

# Set the diagonal to zero, and display
diag(m) <- 0
m



# Create the igraph data structure from m and display
g1 <- graph_from_adjacency_matrix(m)
plot(g1)
