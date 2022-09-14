set.seed(200)
(v <- sample(1:20, 5, replace = T))
v
v >= 10 & v <= 14
v < 5 | v > 17
!(v < 5 | v > 17)
v <- 1:5
ifelse(v %% 2 == 0, "Even", "Odd")
ans <- ifelse(v %% 2 == 0, "Even", "Odd")
and
ans
str(nas)
str(ans)
v
set.seed(200)
N <- 500
v <- sample(1:5,N,replace = T)
(freq <- table(v))
v
table(v)
v2 <- sample(1:5,10000000,replace = T)
v2
table(v2)
v <- 1:10
length(v)
v <- c(v,200)
length(v)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
# So that we all get the same answer
set.seed(220913)
# The number of 2 dice throws
N = 10
# Throw dice number 2
d1 <- sample(1:6,N,replace = T)
d2 <- sample(1:6,N,replace = T)
d1
d2
res <- d1 + d2
res
d1
d2
# Sum the two throws
res <- d1 + d2
# Call the table function
table(res)
ans <- t1 /N
# Call the table function
t1 <- table(res)
ans <- t1 /N
ans
sum(ans)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
res
t1
sum(t1)
ans
100*ans
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
100*ans
1/6
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
100*ans
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
# Extra...
# Count the number of sevens using ==
sum(res==7)
res
res == 7
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
res == 7
# Extra...
# Count the number of sevens using ==
sum(res==7)
table(res)
names(t1)
attributes(t1)
unclass(t1)
str(unclass(t1))
names(unclass(t1))
as.vector(t1)
m <- lm(mpg~disp,data=mtcars)
View(m)
names(m)
v1 <- c(10,"Hello")
v1
l1 <- list(10,"Hello")
l1
str(l1)
l1 <- list(1:2,c(TRUE, FALSE),list(3:4,5:6))
str(l1)
m <- lm(mpg~disp,data=mtcars)
str(m)
l3 <- list(list(1:2,list(3:4,list(5:6))))
str(l3)
summary(m)
summary.lm
l2 <- vector(mode="list",length = 100)
str(l2)
l2 <- list(el1=1:2,c(TRUE, FALSE),list(3:4,5:6))
str(l2)
names(l2)
l3 <- list(1:5,"Hello")
str(l3)
unlist(l3)
set.seed(111)
customers <- rpois(n = 10, lambda = 100)
customers
hist(rpois(n=1000,lambda = 100))
names(customers) <- paste0("D",1:10)
paste0("D",1:10)
customers
customers[1]
customers[1:2]
customers[1:4]
customers[2:4]
customers[-1]
customers[-1:2]
customers[-(1:2)]
customers[-c(1,10)]
customers[-c(1,length(customers))]
customers
lv <- customers > 100
lv
customers
customers[lv]
lv2 <- c(T,F)
lv2
customers
customers[lv2]
customers[c(T,F)]
customers[customers < 98]
customers[customers < median(custiomer)]
customers[customers < median(customers)]
median(customers)
customers[customers > median(customers)]
customers[c("D10","D1")]
customers[-c("D10","D1")]
customers[c("D10","D1")]
res
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/01 Vectors/Dice.R")
gt_med <- res[res > median(res)]
table(gt_med)
median(res)
gt_median
gt_med
l1 <- list(a="Hello",b=1:5,c=list(d=c(T,T,F),e="Hello World"))
l1
str(l1[1])
str(l1)
str(l1[1])
l1[-1]
str(l1[-1])
l1[[1]]
l1[["a"]]
l1[[3]]
l1[[3]][[1]]
l1[[3]][[2]]
l1$c$d
l1[["c"]]
l1[["c"]][["d"]]
l1$d
l1$d <- "Hello"
l1
l1$c$d
m$rank

