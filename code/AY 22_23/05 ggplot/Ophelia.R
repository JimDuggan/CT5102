library(ggplot2)
library(dplyr)
library(aimsir17)

# ROCHES POINT, SherkinIsland and VALENTIA OBSERVATORY

d1 <- observations %>%
  subset(station == "ROCHES POINT" |
           station == "SherkinIsland" |
           station == "VALENTIA OBSERVATORY") %>%
  subset(day==16 & month==10)

dataset <- observations |>
      subset(station == "ROCHES POINT" |
             station == "SherkinIsland" |
             station == "VALENTIA OBSERVATORY") |>
      subset(day==16 & month==10)


p1 <- ggplot(d,aes(x=date,y=msl,colour=station))+
       geom_point()+
       geom_line()+
  xlab("Time of Day")+
  ggtitle

p2 <- ggplot(d,aes(x=date,y=msl,colour=station))+
  geom_point()+
  geom_line()+
  xlab("Time of Day")+
  facet_wrap(~station)+
  heme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

ggplot(observations,aes(y=temp,x=station)) + geom_boxplot()
