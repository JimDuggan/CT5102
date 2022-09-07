# R Code for Lecture 1 – Vectors
# 
# History of R Commands Used.
# 
x<-1
mtcars
search()
x <- 10
y = 10
10 -> z
x
str(x1)
str(x)
m <- lm(mpg~disp,data=mtcars)
str(m)
v1 <- c(2.9, 3.1, 4.8)
v1
v1[1]
typeof(v1)
View(m)
t <- c(12.2, "Hello World")
t
l <- list(12.2, "Hello")
l
lv <- c(T,F,T)
lv
str(lv)
sum(lv)
x1 <- c(TRUE,1.222)
x1
x <- 1:100000
x <- c(1,2,3,4)
x <- 1:100
x
2:3
y1 <- vector("logical", length = 3)
y1 <- vector("logical", length = 3)
y1
y1 <- c(y1,"Hello")
y1
?vector
y <- 10
(y <- 10)
x <- c(1,2,3,4,4)
uniQUE()
UNIQUE()
unique(x)
x
x <- 100000000000000L
x <- 1000000000L
x <- 10000000000L
x_dbl<- c(a=1.2, b=3.4, c=7.2, d=11.1, e=12.7)
x_dbl
names(x_dbl)
x_dbl
names(x_dbl)
names(x_dbl) <- LETTERS[1:5]
x_dbl
names(x_dbl)<-c("A","A","A","A","B")
x_dbl
t1 <- names(x_dbl)
t1
attributes(x_dbl)
y <- unname(x_dbl)
y
attributes(y)
attributes(x_dbl)
attr(y,"Test")<-100
attributes(y)
m <- lm(mpg~disp,data=mtcars)
names(m)
v <- 1:5
v[5] <- NA
summary(v)
summary(m)
v
check <- is.na(v)
check
v <- c(v,v)
v
check <- is.na(v)
check
which(is.na(v))
sum(check)
sum(v)
v
sum(v,na.rm=T)
?sum
mean(v)
v <- 1:10000000
sum(v)
v[10000]<-NA
sum(v)
mean(v,na.rm=T)
mean(v)
?complete.cases
set.seed(100)
(v <- sample(1:10,5))
v
(v <- sample(1:10,5))
(v <- sample(1:10,5))
(v <- sample(1:10,5))
(v <- sample(1:10,5))
set.seed(100)
(v <- sample(1:10,5))
v <- sample(1:10,12)
v <- sample(1:10,12,replace = T)
v
v <- sample(1:10,10)
v
v <- sample(1:10,11)
d <- sample(1:6,10,replace = T)
d
table(d)
d <- sample(1:6,100,replace = T)
table(d)
d <- sample(1:6,1000000,replace = T)
table(d)
d <- sample(c("A","B"),10)
d <- sample(c("A","B"),10,replace = T)
d
h <- rnorm(1000,72,10)
hist(h)
sample(LETTERS,10)
sample(c(letters,LETTERS),10)
sample(c(letters,LETTERS),100)
sample(c(letters,LETTERS),100,replace = T)
x <- 1:10
x
x == 5
check <- x == 5
sum(check)
check
x > mean(x)
x
mean(x)

