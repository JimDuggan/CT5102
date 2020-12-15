methods("mean")

x <- list(a=1:3,b=4:7)
class(x) <- "my_class"

my_class <- function(x){
  structure(x,class="my_class")
}

mod <- lm(eruptions ~ waiting, data=faithful)

class(mod) <- c("my_lm","lm")

coef.my_lm <- function(o){
  cat("Welcome to coef() for the class my_lm\n")
  cat("Here is the output from coef() for the class lm\n")
  class(o) <- "lm"
  coef(o)
}
