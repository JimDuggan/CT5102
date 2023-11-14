new_queue <- function(name,description){
  l <- list(queue_name=name,
            queue_description=description,
            waiting=vector(mode="character"),
            completed=vector(mode="character"))
  class(l) <- "queue"
  l
}

q1 <- new_queue("Q1","Products queue")
str(q1)
class(q1)


print.queue <- function(q){
  cat("Queue name = ",q$queue_name,"\n")
  cat("Queue Description = ",q$queue_description,"\n")
  cat("Waiting <",length(q$waiting),"> Products Waiting = ",
      q$waiting,"\n")
  cat("Processed <",length(q$processed),"> Products Processed = ",
      q$processed,"\n")
}

print.queuE <- function(q){
  cat("Queue name = ",q$queue_name,"\n")
  cat("Queue Description = ",q$queue_description,"\n")
  cat("Waiting <",length(q$waiting),"> Products Waiting = ",
      q$waiting,"\n")
  cat("Processed <",length(q$processed),"> Products Processed = ",
      q$processed,"\n")
}

q1

add <- function(q,p){
  UseMethod("add")
}

process <- function(q){
  UseMethod("process")
}

add.queue <- function (q, p){
  q$waiting <- c(q$waiting, p)
  q
}

q1 <- add(q1,"P-01")
q1

process.queue <- function(q){
  if(length(q$waiting) == 0){
    cat("Cannot process queue as it is empty!\n")
    return(q)
  }
  q$processed <- c(q$processed, q$waiting[1])
  q$waiting   <- q$waiting[-1]
  q
}

q1
q1 <- process(q1)
q1


