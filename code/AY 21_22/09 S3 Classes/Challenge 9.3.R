df1 <- mtcars

class(df1)

class(df1) <- c("abc",class(df1))


print.abc <- function(o){
  print(Sys.time())
  class(o) <- "data.frame"
  print(o)
}

class(df1) <- "data.frame"

