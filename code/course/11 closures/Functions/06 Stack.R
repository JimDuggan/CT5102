# Implemented as a list

mystack <- function(){
  stack <- list()
  
  # push(v) Push a value onto the stack
  push <- function(v){
    stack[[length(stack)+1]] <<- v
  }
  
  # peek() Return the top of the stack
  peek <- function(){
    stack[[length(stack)]]
  }
  
  # show() Show the complete stack
  show <- function(){
    stack
  }
  
  # pop() Return the top value and remove from stack
  pop <- function(){
    ret <- stack[[length(stack)]]
    stack[[length(stack)]] <<- NULL
    ret
  }

  list(push=push, peek=peek, pop=pop,show=show)
}

s <- mystack()

ls(env=fn_env(s$push))

s$push(1:2)
fn_env(s$push)$stack
s$push(99)
s$show()

