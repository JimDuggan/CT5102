# Class exercise 16th November 2021

counter <-function(init=0){
  state <- init
  
  increment <- function(a){
    state <<- state + a
  }
  
  
  decrement <- function(a){
    state <<- state - a
  }
  
  get_state <- function(){
    state
  }
  
  list(inc=increment,
       dec=decrement,
       get_state=get_state,
       f_env=environment())
}

c <- counter()
