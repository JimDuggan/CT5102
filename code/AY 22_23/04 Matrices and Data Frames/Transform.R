df1 <- subset(mtcars,mpg>32,select=c("mpg","disp"))

df1 <- transform(df1,kpg=mpg*1.6)