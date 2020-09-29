sb <- subset(mtcars,cyl==6,select=c("mpg","cyl"))

ans <- sapply(sb, function(col){
  min(col)
})