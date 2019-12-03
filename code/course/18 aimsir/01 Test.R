library(aimsir17)
library(ggplot2)
library(dplyr)
library(lubridate)


my_obs <- observations %>%
            mutate(Month=factor(month(date,label = T),
                                levels = c("Jan","Feb","Mar","Apr","May","Jun",
                                           "Jul","Aug","Sep","Oct","Nov","Dec")))


month_rain <- my_obs %>% 
                group_by(Month,station) %>%
                summarise(TotalRainfall=sum(rain,na.rm = T))

ggplot(month_rain,aes(x=Month,y=TotalRainfall,group=Month))+
  geom_point()+
  geom_path()+
  facet_wrap(~station)