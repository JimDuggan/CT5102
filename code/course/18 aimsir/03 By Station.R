library(aimsir17)
library(ggplot2)
library(dplyr)

# Add day number
observations <- observations %>% 
                 mutate(DayNumber=yday(date))


summ_daily <- observations %>% group_by(DayNumber,station) %>% 
                summarise(Rainfall=sum(rain,na.rm=T),
                          AveragePressure=mean(msl,na.rm = T),
                          AverageWindSpeed=mean(wdsp,na.rm=T),
                          AverageTemperature=mean(temp,na.rm=T),
                          MinTemperature=min(temp,na.rm=T),
                          MaxTemperature=max(temp,na.rm=T))

ggplot(summ_daily,aes(x=DayNumber,y=Rainfall))+
  geom_point()+geom_line()+facet_wrap(~station)

ggplot(summ_daily,aes(x=DayNumber,y=AverageTemperature))+
       geom_point()+geom_line()+geom_smooth()+facet_wrap(~station)

ggplot(summ_daily,aes(x=DayNumber,y=MinTemperature))+
  geom_point()+geom_line()+geom_smooth()+facet_wrap(~station)

ggplot(summ_daily,aes(x=DayNumber,y=MaxTemperature))+
  geom_point()+geom_line()+geom_smooth()+facet_wrap(~station)

ggplot(summ_daily,aes(x=AveragePressure,y=Rainfall))+
  geom_point()+geom_smooth()+facet_wrap(~station)

ggplot(summ_daily,aes(x=AveragePressure,y=AverageWindSpeed))+
    geom_point(alpha=0.1)+geom_smooth()+facet_wrap(~station)
