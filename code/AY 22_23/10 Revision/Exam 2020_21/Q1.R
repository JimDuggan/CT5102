stopwatch <- function(){
  start_time <- 0
  finish_time <- 0
  
  list(start=function()start_time<<-Sys.time(),
       stop=function()finish_time<<-Sys.time(),
       get_duration=function()finish_time-start_time)
}


st <- stopwatch()

st$start()

st$stop()

st$get_duration()

