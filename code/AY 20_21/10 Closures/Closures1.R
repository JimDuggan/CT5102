
plus <- function (x){
  print("Environment info for plus...")
  print(environment())
  function (y){
    x+y
  }
}

plus_one <- plus(1)




print(environment(plus_one))
env <- environment(plus_one)

