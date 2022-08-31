# For the vector 1:100, 
# convert this to a 10 x 10 matrix 
# using the attr() function

# Perform a similar conversion using the dim function

y <- 1:5
names(y) <- letters[1:5]

y1 <- 1:5
attr(y1,"names") <- letters[1:5]

x <- 1:100

attr(x,"dim") <- c(10,10)

x1 <- 1:100

dim(x1) <- c(20,5)

