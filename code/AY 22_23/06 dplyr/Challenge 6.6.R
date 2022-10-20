library(aimsir17)
library(dplyr)
library(ggplot2)

t <- c("DUBLIN AIRPORT", "BELMULLET", "MACE HEAD")
ds1 <- observations %>%
        filter(station %in% t) %>%
        group_by(station, month) %>%
        summarise(TotalRain=sum(rain,na.rm=T))

ggplot(ds1,aes(x=month,y=TotalRain,colour=station))+
  geom_point()+geom_line()

observations |>
  group_by(station) |>
  summarise(TR=sum(rain,na.rm=T)) |>
  arrange(desc(TR))

observations |>
  group_by(month) |>
  summarise(TR=sum(rain,na.rm=T)) |>
  arrange(TR)




