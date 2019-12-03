
library(aimsir17)
library(ggplot2)
library(dplyr)
library(lubridate)

# Add day number using lubridate package
observations <- observations %>% 
                 mutate(DayNumber=yday(date))

# Summarise for each day
summ_daily <- observations %>% group_by(DayNumber) %>% 
                summarise(Rainfall=sum(rain,na.rm=T),
                          AveragePressure=mean(msl,na.rm = T),
                          AverageWindSpeed=mean(wdsp,na.rm=T),
                          AverageTemperature=mean(temp,na.rm=T),
                          MinTemperature=min(temp,na.rm=T),
                          MaxTemperature=max(temp,na.rm=T))

# Plot Average temperature (over 24 observations)
ggplot(summ_daily,aes(x=DayNumber,y=AverageTemperature))+
       geom_point(alpha=0.2,colour="red")+geom_line()+geom_smooth()

# Explore relationship between pressure and average wind speed
ggplot(summ_daily,aes(x=AveragePressure,y=AverageWindSpeed))+
  geom_point(alpha=0.1)+geom_smooth()







