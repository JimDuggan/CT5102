library(dplyr)
library(ggplot2)
library(nycflights13)
flights |> 
  group_by(origin) |> 
  summarise(AvDepDel=mean(dep_delay,na.rm=T),
            AvArrDel=mean(arr_delay,na.rm=T))

m_d <- flights |> 
  group_by(origin,month) |> 
  summarise(AvDepDel=mean(dep_delay,na.rm=T),
            AvArrDel=mean(arr_delay,na.rm=T),
            NFlights=n())

ggplot(m_d,aes(x=month,y=AvDepDel,colour=origin))+
    geom_point()+geom_line()

