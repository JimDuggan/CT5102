is.function(min)
is.function(T)
xyx <- max
xyz <- max
xyz(c(1,3))
my_summary <- function(v, fn){
  fn(v)
}
tc <- sample(1:10,5)
tc
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/Functional.R")
tc
my_summary(tc,min)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/Functional.R")
my_summary(tc,max)
my_summary(tc,function(v1)sum(v1))
my_summary(tc,function(v1)prod(v1))
ans <- my_summary(tc,function(v){
  list(data=v,
       min=min(v),
       sum=sum(v))
})
ans
str(nas)
str(ans)
my_summary <- function(v, fn){
  browser()
  fn(v)
}
ans <- my_summary(tc,function(v){
  list(data=v,
       min=min(v),
       sum=sum(v))
})
fn
min
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/MApping.R")
f(1,2,3)
f(2,3,abc=1)
f(b=100,1,2)
?sample
sample(x=1:10,size=3)
sample(size=3,x=1:10)
sample(1:10,3,replace = T)
test_dot1 <- function(...){
  ar = list(...)
  str(ar)
}
test_dot(1,2,3,4,5,9,1:10)
test_dot1(1,2,3,4,5,9,1:10)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/MApping.R")
evens(1:10)
evens("Ehllo world")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/Envs.R")
where("x")
where("min")
where("lm")
search()
library(aimsir17)
search()
where("x")
where("observations")
where("min")
min <- function(x)"Hello"
where("min")
f2(10)
f2 <- function(a){
  a + x
}
f2(10)
f2 <- function(a){
  a + x
}
f2(10)
x <- 500
f2(10)
enviornment(f2)
environment(f2)
f2 <- function(a){
  browser()
  a + x
}
f2(10)
f2 <- function(a){
  x <- 1000
  a + x
}
x
f2(10)
x
f3 <- function(a){
  x <<- 1000
  a + x
}
f3(10)
x
source("~/.active-rstudio-document")
str(l_in)
l_out <- lapply(l_in,sum)
str(l_out)
l_out1 <- lapply(l_in,function(x){
  sum(x)
})
l_out1 <- lapply(l_in,function(x){
  sum(x)
})
l_out1
str(l_out1)
str(l_out)
l_out1 <- lapply(l_in,function(x,y){
  sum(x)
},y=10)
l_out1
l_out1 <- lapply(l_in,function(x,y){
  sum(x)+y
},y=10)
l_out
l_out1
l_out2 <- lapply(l_in,function(x){
  browser()
  sum(x)
})
x
l_in[[1]]
sum(x)
x
x
lappy(mtcars,mean)
lapply(mtcars,mean)
summary(mtcars)
l_out2 <- lapply(l_in,function(x){
  browser()
  sum(x)
})
l_out3 <- lapply(mtcars,function(x){
  browser()
  sum(x)
})
x
x
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/StarWars.R")
str(target_list)
View(target_list)
target_list <- lapply(sw_films,
                      function(x)
                        if(x$director==target) x else NA)
is.na(target_list)
savehistory("~/Desktop/Tmp.Rhistory")
