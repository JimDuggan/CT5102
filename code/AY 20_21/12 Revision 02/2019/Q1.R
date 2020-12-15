#--------------------------------------------------------------------------------------
# what does the following code return. Explain your answer clearly
f2 <- function (x){
  function(y){
    x-y
  }
}

f1 <- f2(5)
f2(5)(10)

# Draw a diagram of the global environment after the following code has been run
#--------------------------------------------------------------------------------------
y <- 100
f3 <- function (x){
  z<<-200
  y<-x-1
}

ans <- f3(10)

#--------------------------------------------------------------------------------------

mystack<- function(){
  data<-vector()
  list(
    push=function(d){
           data <<- c(d,data)
         },
    pop=function(){
      top <- data[1]
      if(length(data) == 1)
        data <<- vector()
      else
        data <<- data[2:length(data)]
      top
    },
    peek=function(){
      data[1]
    },
    show=function(){
          data
         })
}

# Draw a diagram of the globalenv after the function mystack() is called