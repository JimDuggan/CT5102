# From chapter 2, Mastering Predictive Analytics with R
# Rui Miguel Forte

# Synthetic data for a linear model.
library(ggplot2)

set.seed(123)

nObs         <- 100
x1_min_range <- 5
x1_max_range <- 25

x1 <- runif(nObs, x1_min_range, x1_max_range)

e <- rnorm(nObs,mean=0, sd=2.0)

y <- 1.67 * x1 - 2.93 + e

df <- data.frame(y,x1)

ggplot(data=df,aes(x=x1,y=y))+geom_point()+geom_smooth(method = "lm")

m <- lm(data=df,y~x1)

hist(m$residuals)

qqnorm(m$residuals)

summary(m)

