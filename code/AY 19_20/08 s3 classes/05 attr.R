#For the vector 1:100, 
#convert this to a 10 x 10 
#matrix using the attr() function

v <- 1:10

attr(v,"dim") <- c(5,2)
v
