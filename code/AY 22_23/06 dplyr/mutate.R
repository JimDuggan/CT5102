library(nycflights13)
library(dplyr)
library(ggplot2)

flights <- flights |>
            mutate(OnTime=dep_delay <= 0)

ggplot(data = flights) +
  geom_bar(mapping = aes(x = OnTime,fill=origin))

observations <- observations |>
                 mutate(WW=temp <= 4)

ggplot(data = observations) +
  geom_bar(mapping = aes(x = WW,fill=station))

observations <- observations |>
  +                  mutate(WW=temp <= 4)

ds1 <- filter(observations,
              station %in% c("DUBLIN AIRPORT","MACE HEAD"))


ggplot(ds1,aes(x=date,y=temp,colour=WW))+
  geom_point()+facet_wrap(~station)+geom_smooth()

