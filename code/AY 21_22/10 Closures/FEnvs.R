h <- function(x){
  ef <- environment()
  print(ef)
  e_gl <<- ef
  print(parent.env(ef))
  a <-2
  x + a
}