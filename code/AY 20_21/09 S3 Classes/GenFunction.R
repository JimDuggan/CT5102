summary.abc <- function(o){
  cat("Hello world!\n")
}

summary.abcd <- function(o){
  cat("Hello world2!\n")
}


x <- 1:10

summary(x)

# attr(x,"class") <- "abc"
class(x) <- "abc"

summary(x)

