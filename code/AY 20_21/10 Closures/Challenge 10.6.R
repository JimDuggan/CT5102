# Write a closure for a bank account
# It should have state of
# account_number
# balance
# The following functions should be added
# debit(amt)
# credit(amt)
# get_balance()

account <- function(n){
  print(environment())
  number <- n
  balance <- 0.0
  list(
    debit = function(amt){
      balance <<- balance - amt
    },
    credit =  function (amt){
      balance <<- balance + amt
    },
    get_balance = function(){
      balance
    }
  )
}

a <- account("12345")
env1 <- environment(a$debit)
print(env1)

env2 <- environment(a$credit)
print(env2)

env3 <- environment(a$get_balance)
print(env3)

a$credit(200)
a$get_balance()

a2 <- account("12346")

env4$balance<-800

