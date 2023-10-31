library(ggplot2)
library(dplyr)
library(purrr)

res1 <- mpg %>%
        select(cty,hwy,displ) %>%
        map(mean)

res2 <- mpg %>%
         select(cty,hwy,displ) %>%
         map(function(x){
           # browser()
           mean(x)
         })

res3 <- mpg %>%
         select(cty,hwy,displ) %>%
         map_dbl(function(x){
            mean(x)
         })

res4 <- mpg %>%
  select(cty,hwy,displ) %>%
  map_chr(function(x){
    mean(x)
  })

res5 <- mpg %>%
  select(cty,hwy,displ) %>%
  map_dbl(~mean(.x))

res6 <- mpg %>%
  select(cty,hwy,displ) %>%
  map_dbl(~{
    mean(.)})
