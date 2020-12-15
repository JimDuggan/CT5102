# Describe the different data types in Base R, and show how they can be classified as either
# heterogeneous / homogenous data


# Predict the data types of the following vectors, and explain your answer
c(10, 20, TRUE, "TRUE")
c(T,T,F,0)
unlist(list(10, 20, TRUE, "TRUE"))


# Explain the purpose of this function, and how each line contributes to the solution.
my_func <- function(x, f, ...) {
  out <- vector(mode = "list", length = length(x))
  for (i in seq_along(x)) {
    out[[i]] <- f(x[[i]], ...)
  }
  out
}

# for the following list, draw a representaton of the following commmands, and explain each diagram

l<- list(el1=1:3, el2="Test", el3=list(n1=10, n2=2:5))

l[3]
l[1:2]
l[[1]]
l[[3]][[2]][3]


# Functional example
x<-seq(-10,10,by = 0.1)

y <- sapply(x, function (x){1/(1+exp(-x))})

