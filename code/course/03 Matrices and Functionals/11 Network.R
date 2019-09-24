set.seed(100)
data <- sample(c(0,1),100,replace = T)
m <- matrix(data,nrow = 10,byrow=F)
diag(m) <- 0
rownames(m) <- LETTERS[1:10]
colnames(m) <- LETTERS[1:10]

getFollowing <- function (m, person){
  col <- m[,person]==1
  names(m[col,person])
  browser()
}

getFollowingShort <- function (m, person){
  names(m[m[,person]==1,person])
}

