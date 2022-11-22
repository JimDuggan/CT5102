sum <- function(x)base::sum(x[-1])

f1 <- function (x){
  function (y){
    x-y
  }
}

y <- f1(3)(2) 

SKU <- function(n){
  on_hand <- n
  
  inc <- function(a){
    on_hand <<- on_hand + a
  }
  
  dec <- function(a){
    on_hand <<- on_hand - a
  }
  
  get_stock <- function(){
    on_hand
  }
  
  list(increment=inc,
       decrement=dec,
       get_stock=get_stock)
}


s <- SKU(10)

st$start()

st$stop()

st$get_duration()
