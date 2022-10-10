x <- matrix(1:9,ncol=3)
x
attribues(x)
class(x)
typeof(x)
unclass(x)
attributes(x)
attr(x,"dim") <- NULL
x
str(x)
a1 <- mtcars |>
  as.list() |>
  lapply(function(x)mean(x)) |>
  unlist()
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
plot(g1)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
g1
summary(g1)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
adrop(m)
sqrt(1:3)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Simple Pipe.R")
y
x
z <- round(sqrt(1:3))
z
z <- round(sqrt(1:3),3)
z
y1 <- 1:3 |> sqrt() |> round(3)
y1
1:3      |>
  sqrt() |>
  round(3) -> y2
y2
a1 <- mtcars |>
  as.list() |>
  lapply(function(x)mean(x)) |>
  unlist()
a1
a2 <- mtcars |>
  lapply(function(x)mean(x)) |>
  unlist()
a2
m <- matrix(1:4,nrow=2)
m
m <- matrix(1:4,nrow=2,byrow = T)
m
m <- matrix(1:5,nrow=2,byrow = T)
m
m1 <- matrix(1:4,nrow=2,byrow = T)
m2 <- matrix(1:5,nrow=2,byrow = T)
m1
m2
m2 <- matrix(nrow=2,ncol=2)
m2
m2 <- 0
m2
m2 <- matrix(nrow=2,ncol=2)
m <- matrix(1:4,nrow=2)
m
rownames(m) <- c("R1","R2")
m
colnames(m) <- c("C1","C2")
m
dim(m) <- c(4,1)
m
dim(m) <- c(2,2)
m
x <- diag(4)
x
library(igraph)
# Set the number of users
N = 10
# Set the seed to ensure the matrix can be reproduced
set.seed(100)
# Sample, with replacement, 100 numbers, with 20% of a 1
v <- sample(0:1,N^2,replace = T,prob = c(0.1,.9))
v
library(igraph)
# Set the number of users
N = 10
# Set the seed to ensure the matrix can be reproduced
set.seed(100)
# Sample, with replacement, 100 numbers, with 20% of a 1
v <- sample(0:1,N^2,replace = T,prob = c(0.6,.4))
v
# Create the matrix of 10x10
m <- matrix(v,nrow=N)
m
rownames(m) <- paste0("P-",1:N)
colnames(m) <- rownames(m)
m
diag(m) <- 0
m
g1 <- graph_from_adjacency_matrix(m)
g1
plot(g1)
m
m <- matrix(1:4,rnow=2)
m <- matrix(1:4,nrow=2)
m
cbind(m,c("1","2"))
mtcars
library(ggplot2)
mpg
m
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Social Networks.R")
m
?diag
m
m[1,] <- 99
m
m[1,4] <- -1
m
m[,] <- 0
m
source("~/.active-rstudio-document")
d
d[1,]
d$Number
d[,1]
View(mtcars)
typeof(mtcars)
class(mtacrs)
class(mtcars)
mtcars[1,]
mtcars[1,]
d <- data.frame(Number=1:5,
                Letter=LETTERS[1:5],
                Flag=c(T,F,T,F,NA),
                stringsAsFactors = F)
str(d)
l <- as.list(d)
str(l)
l
d
d[1,]
d[1:2,]
d[1:2,1:2]
d[,1]
d[[1]]
d$Number
d[["Number"]]
d$New <- 6:10
d
install.packages("nycflights13")
library(nycflights13)
summary(flights)
View(flights)
summary(d)
dim(d)
dim(flights)
d$Flag == T
d[d$Flag == T,]
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Subsetting.R")
a1
mtcars
View(mtcars)
dim(mtcars)
a1
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/04 Matrices and Data Frames/Subsetting.R")
a2
mtcars[,"mpg"]>32
df1 <- subset(mtcars,mpg>32,select=c("mpg","disp"))
df1 <- transform(df1,kpg=mpg*1.6)
df1
df1$kpg_2 <- df1$mpg*1.6
df1
mtcars
mtcars
flights
library(aimsir17)
observations
observations$station
observations[1,]
observations[1,1]
observations[1:5,1]
install.packages("readr")
library(readr)
source("~/.active-rstudio-document")
results
lappy(results,function(x)mean(x))
lapply(results,function(x)mean(x))
unlist(lapply(results,function(x)mean(x)))
results
max_gr_student <- apply(results, # the matrix
                        1, # 1 for rows
                        max)
max_gr_student
results
d
mtcars[["mpg"]]
mtcars["mpg"]
savehistory("~/Desktop/Test.Rhistory")
