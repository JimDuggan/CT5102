my_lm <- function(y, x, d){
  mod <- lm(y ~ x, data=d)
  class(mod) <- c("my_lm", "lm")
  mod
}

summary.my_lm <- function(x){
  print("My Summary will appear here...")
}

ans <- my_lm(faithful$eruptions, faithful$waiting, faithful)
