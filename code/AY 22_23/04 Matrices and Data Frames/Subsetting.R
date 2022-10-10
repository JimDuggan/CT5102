a1 <- subset(mtcars,mpg>32,select=c("mpg","disp"))

a2 <- mtcars[mtcars[,"mpg"]>32,c("mpg","disp")]


a3 <- mtcars[mtcars$mpg>32,c("mpg","disp")]