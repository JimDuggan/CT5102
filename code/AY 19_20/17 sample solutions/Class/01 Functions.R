test2<-function(v,...){
  mean(v,na.rm=T)
}

test <- function(v,...){
  l = list(...)
  test2(v,...)
}