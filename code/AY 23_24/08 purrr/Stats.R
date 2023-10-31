library(ggplot2)
library(dplyr)
library(purrr)

ggplot(mpg,aes(x=displ,y=cty,colour=class))+
  geom_point()+
  geom_smooth(method="lm")+
  facet_wrap(~class)

mpg_l <- mpg %>% 
          group_by(class) %>%
          group_split() %>%
          map_df(~{
            mod <- lm(cty~displ,data=.)
            Intercept <- coef(mod)[1]
            Slope <- coef(mod)[2]
            tibble(Class=first(.$class),
                   NObs=nrow(.),
                   Intercept=Intercept,
                   Slope=Slope)
            })


