library(aimsir17)
library(bbplot)

ts <- c("DUBLIN AIRPORT","SherkinIsland","MACE HEAD")

jan <- subset(observations,station == "MACE HEAD" |
                           station == "DUBLIN AIRPORT" |
                           station == "SherkinIsland") |>
       subset(month==1)

ggplot(data=jan,aes(x=date,y=temp,colour=station))+
  geom_point()+bbc_style()

ggplot(data=jan,aes(x=date,y=temp,colour=station))+
  geom_point()+geom_line()

ggplot(data=jan,aes(x=date,y=temp,colour=station,size=rain))+
  geom_point()+xlab("Time")+
  ggtitle("My Plot")+
  geom_hline(yintercept = 0,colour="red",size=3)
