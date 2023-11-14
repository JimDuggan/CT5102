library(ggplot2)

source("code/AY 23_24/10 S3/Plot_functions.R")

mod <- lm(hwy~displ,data=mpg)
class(mod)

umod <- update_mod(mod)
class(umod)

plot(mod)
plot(umod)
