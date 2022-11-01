# Make use of the tibble aimsir17
# Write a map function that takes in a list of elements, and then returns (as an integer) the number missing values in each list element
# Then use the ~ operator to perform the same task
# Try using
# lapply()
# map() – anon function same as lapply
# map() – tilde dot with .x
# map() – tilde dot with .

library(aimsir17)
library(purrr)

a1 <- observations |>
       lapply(function(x){
         browser()
         sum(is.na(x))
       })

a2 <- observations |>
        map(function(y)sum(is.na(y)))

a3 <- observations |>
        map(~sum(is.na(.x)))

a4 <- observations |>
        map(~sum(is.na(.)))






