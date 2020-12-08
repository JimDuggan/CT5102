
plus <- function (x){
  z <<-10
  print("Environment info for plus...")
  print(environment())
  function (y){
    x+y
  }
}

plus_one <- plus(1)


plus_one(10)
plus_one(100)

print(environment(plus_one))
env <- environment(plus_one)

