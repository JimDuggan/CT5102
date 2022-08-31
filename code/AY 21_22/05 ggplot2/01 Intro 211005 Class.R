library(ggplot2)
library(tibble)

x_val <- c(30,21,40,10,8,25,31,71,14,20)
y_val <- c(70,51,100,22,10,42,48,120,17,28)
group <- c("A","A","B","B","B","A","B","A","B","A")
prop  <- c(80,30,100,40,30,50,10,90,75,30)

tb <- tibble(XVal=x_val,
             YVal=y_val,
             Group=group,
             Property=prop)



