# Manipulate the environment of plus_one 
# so that it will add 10 instead of one (i.e x=10)


plus <- function (x){
  print("Execution Environment...")
  print(environment())
  function (y){
    x+y
  }
}

plus_one <- plus(1)

plus_one(20)

env_plus_one <- environment(plus_one)
env_plus_one$x <- 10
plus_one(20)
env_plus_one$x <- -100
plus_one(20)
