A<-100; B<-20

f1<-function(a){
  B<-100
  f2<-function(b){
    A<<-200+b
    B<<-1000-b
  }
  f2(a)
}

f1(B)



l <- list(c(T,F),1:5,list(1:2,6:7))



pow <- function (x){
  function (y){
    y^x
  }
}

x <- seq(-100,100,.1)

y <- sapply(x,function(x,a,b,c,d)a*x^3+b*x^2+c*x+d,2,-3,4,100)

library(purrr)
y <- map_dbl(x,function(x,a,b,c,d)a*x^3+b*x^2+c*x+d,2,-3,4,100)


