summary.mylm <- function (o){
  browser()
  cat("this is my summary...\n")
  class(o) <- class(o)[-1]
  summary(o)
}

l <- lm(cty~displ,data=mpg)

class(l) <- c("mylm","lm")

print(l)

summary(l)

