library(purrr)
library(dplyr)
library(tidyr)

x <- seq(-100,100,.1)

y <- map_dbl(x,~3*.x^2-10*.x+100)

mpg %>% 
  group_split(class) %>%
  map_df(~{
    tibble(NObs=nrow(.x),
           CarClass=first(.x$class),
           AvrHwy=mean(.x$hwy),
           AvrCty=mean(.x$cty))
  })

n_mpg <- mpg %>% group_by(manufacturer) %>% nest() %>% head()

n_mpg <- n_mpg %>% 
          mutate(RSquared=map_dbl(data,~{
            m <- lm(hwy~displ,data=.)
            summary(m)$r.squared
          })) 


