f1 <- function (x){
  function (y){
    y^x
  }
}


x <- 100

f1 <- function(x1){
  f2 <- function(x2){
    x <<- x1 + x2
  }
  f2(10)
}

f1(100)



counter <- function (){
  state <- 0
  list(
    increment=function(n=1){
        state <<- state + n
    },
    decrement=function(n=1){
      state <<- state - n
    },
    reset=function(n=0){
      state <<- n
    },
    get_state=function(){
      state
    }
  )
}
