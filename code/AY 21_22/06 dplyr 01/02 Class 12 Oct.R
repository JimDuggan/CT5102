library(aimsir17)
library(dplyr)
library(ggplot2)

obs <- observations

obs <- mutate(obs,WeatherWarning=ifelse(temp < 4, T, F))

t <- obs %>%
       filter(station %in% c("DUBLIN AIRPORT","MACE HEAD")) %>%
       filter(month==1)

ggplot(t,aes(x=date,y=temp,colour=WeatherWarning))+
      geom_point()+
      facet_wrap(~station)


obs <- mutate(obs,WeatherWarning=ifelse(temp < 4, T, F))

t2 <- obs %>%
      mutate(obs,WeatherWarning=ifelse(temp < 4, T, F)) %>%
      filter(station %in% c("DUBLIN AIRPORT","MACE HEAD")) %>%
      filter(month==1)