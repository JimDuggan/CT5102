x <- 10

f1 <- function(a){
  x <- a
}

f2 <- function(a){
  x <<- a
}

x <- 10

f3 <- function(a){
  f4 <-function(b){
    x<<-b
  }
  f4(a*2)
}

f5 <- function(a){
  x<-a
  f6 <-function(b){
    x<<-b
  }
  f6(a*2)
}

f7 <- function(a){
  x<-a
  f8 <-function(b){
    x1<<-b
  }
  f8(a*2)
}






