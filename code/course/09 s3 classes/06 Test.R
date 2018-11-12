v <- 1:10

class(v) <- "test"

print.test <- function (n){
  cat("This is a print function\n")
}