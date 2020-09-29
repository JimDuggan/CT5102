#Use the interval [-10,10] for x, and the seq() function to generate the values in steps of 0.1
#Generate the response f(x) by calling sapply()
#Plot the response using qplot()

x <- seq(-10,10,by = 0.1)

a <- 3
b <- -10
c <- 5

y1 <- lapply(x, function(x){
  a*x^2+b*x+c
} )

y1 <- sapply(x, function(x,a,b,c){
  a*x^2+b*x+c
},10,-10,20 )
