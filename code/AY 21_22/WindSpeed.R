library(aimsir17)
library(dplyr)
library(ggplot2)

eir <- select(eirgrid17,
              year:date,
              IEWindGeneration,
              IEDemand)

mh <- observations %>% 
        filter(station=="MACE HEAD") %>%
        select(year:date,wdsp)

ggplot(eir,aes(x=date,y=IEWindGeneration))+
  geom_point()+geom_smooth()

ggplot(mh,aes(x=date,y=wdsp))+
  geom_point()+geom_smooth()


spd <- filter(eir,day==17,month==3)
xm <- filter(eir,day==25,month==12)

eir_h <- eir %>% 
           group_by(month,day,hour) %>% 
           summarise(AvrIEWind=mean(IEWindGeneration))

joined <- left_join(mh,eir_h,by=c("month","day","hour"))

j1 <- filter(joined, month==10)


ggplot(j1,aes(x=wdsp,y=AvrIEWind))+
  geom_point()+geom_jitter()+geom_smooth(method="lm")

