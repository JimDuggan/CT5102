x <- 1:5

attr(x,"names") <- letters[1:5]

x <- structure(x,names=letters[1:5])


y1 <- 1:5


summary(y1)

y2 <- as.factor(sample(c("A","B"),5,repl=T))

my_df <- function(df){
  structure(df,class=c("my_df",class(df)))
}

summary.my_df <- function(o){
  cat("The column names are ",colnames(o),"\n")
  cat("The number of rows are ",nrow(o),"\n")
  cat("Here is a summary of the columns\n")
  class(o) <- "data.frame"
  summary(o)
}
