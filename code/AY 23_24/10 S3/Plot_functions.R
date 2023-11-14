library(ggplot2)
library(glue)

update_mod <- function(o){
  class(o) <- c("my_lm",class(o))
  o
}


plot.my_lm <- function(o){
  p1 <- ggplot(o$model,aes(x=o$model[[2]],y=o$model[[1]]))+
        geom_point()+
        geom_abline(slope     = o$coefficients[2],
                    intercept =o$coefficients[1],
                    colour="red")+
        geom_jitter()+
        theme_light()+
        labs(x=o$terms[[3]],
             y=o$terms[[2]],
             title="Simple linear regression plot",
             subtitle=glue("Intercept = {round(o$coefficients[1],2)} Slope = {round(o$coefficients[2],2)}"))
  p1
}


