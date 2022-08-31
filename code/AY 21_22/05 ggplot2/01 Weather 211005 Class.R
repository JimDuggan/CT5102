library(ggplot2)
library(aimsir17)

t <- c("DUBLIN AIRPORT","MACE HEAD","SherkinIsland")

jan  <- subset(observations,station %in% t & month==1)
jan1 <- observations[observations$station %in% t & observations$month==1,]

ggplot(jan,aes(x=date,y=temp,colour=station,size=rain))+geom_point()

year <- subset(observations,station %in% t)

ggplot(year,aes(x=date,y=temp,colour=station))+geom_point()


ggplot(year,aes(x=date,y=temp,colour=station))+
  geom_point(alpha=0.1)+
  facet_wrap(~station)+
  geom_smooth()
