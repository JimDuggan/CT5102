summary.df1<-function(x){
  print("This is a summary of the averages from a data frame")
  apply(x,2,function(x)mean(x))
}

mtcars
class(mtcars) <- c("df1","data.frame")


v1 <- structure(list(SKU="PX-ZTY",OnHand=0), class="Inv")

increment.Inv <- function(x, amt){
  x$OnHand <- x$OnHand + amt
  x
}

increment.default <- function(x,amt){
  print("Invalid class, expected Inv!")
}

increment <- function(x,amt){
  UseMethod("increment")
}

