summary.my_class <- function (o){
  cat("Hello World\n")
}

x <- 1:10
sloop::otype(x)
summary(x)



class(x) <- "my_class"
sloop::otype(x)
summary(x)
