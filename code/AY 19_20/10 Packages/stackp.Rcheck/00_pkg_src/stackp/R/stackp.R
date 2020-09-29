#' The constructor for the class stackp
#' @return An S3 object of class stackp
#' @examples
#' s <- stackp()
#' @export
stackp <- function(){
  structure(list(stack=list()), class ="stackp")
}


#' Pushes a value onto the stack
#'
#' @param sp is the current stack object
#' @param val is the value to be added to the stack
#'
#' @return The updated stack object
#' @export
#'
#' @examples
#' s <- stackp()
#' s <- push(s,123)
push <- function(sp, val){
  UseMethod("push")
}

#' @export
push.stackp <- function(sp, val){
  sp$stack[length(sp$stack)+1] <-val
  sp
}

#' @export
peek <- function(sp){
  UseMethod("peek")
}

#' @export
peek.stackp <- function(sp){
  # get the top element
  if(length(sp$stack) == 0)
    stop("No elements on the stack")
  sp$stack[[length(sp$stack)]]
}

#' @export
pop <- function(sp){
  UseMethod("pop")
}

#' @export
pop.stackp <- function(sp){
  # get the top element
  if(length(sp$stack) == 0)
    stop("No elements on the stack to pop")
  sp$stack[length(sp$stack)] <- NULL
  sp
}

#' @export
get_length <- function(sp){
  UseMethod("get_length")
}

#' @export
get_length.stackp <- function(sp){
  length(sp$stack)
}

#' @export
summary.stackp <- function(sp){
  cat("The stack has ",length(sp$stack), "elements\n")
  cat("These are the elements, top to bottom.\n")
  count <- 1
  for(i in rev(seq_along(sp$stack))){
    cat("Element ",count," = ",sp$stack[[i]],"\n")
    count <- count + 1
  }
}

# Classroom Tasks
# (1) Add documentation for functions (generics)
# (2) Add a new function to reverse the stack
# (3) Add a new function to examine the oldest element
# (4) Add a few more tests
