library(aimsir17)
library(dplyr)
library(ggplot2)

# filter example

o1 <- observations %>%
        filter(station %in% c("MACE HEAD",
                              "DUBLIN AIRPORT")) %>%
        filter(month==10)

ggplot(o1,aes(x=date,y=wdsp,colour=station))+
  geom_point()+
  geom_line()

o2 <- observations %>% 
       filter(station %in% c("NEWPORT",
                             "OAK PARK")) %>%
       group_by(station,month) %>%
       summarise(TotalRain=sum(rain,na.rm=T))

ggplot(o2,aes(x=month,y=TotalRain,fill=station))+
  geom_col(position="dodge")


o3 <- observations %>%
        mutate(WWarn=temp<4) %>%
        filter(station=="DUBLIN AIRPORT") %>%
        select(station,date,temp,WWarn)

ggplot(o3,aes(x=date,y=temp,colour=WWarn))+
  geom_point()


o4 <- observations %>%
       filter(month==10,
              station=="VALENTIA OBSERVATORY")

ggplot(o4,aes(x=msl,y=wdsp))+geom_point()+
  geom_jitter()+geom_smooth()

