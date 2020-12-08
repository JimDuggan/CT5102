account <- function(n){
  number  <- n
  balance <- 0
  print(environment())
  
  # child function
  credit <- function (a){
    balance <<- balance + a
  }
  
  debit <- function (a){
    balance <<- balance - a
  }
  
  get_balance <- function (a){
    balance
  }
  
  list(credit=credit,
       debit=debit,
       get_balance=get_balance)
}

a <- account("123")

b <- account("1234")

