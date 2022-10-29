library(aimsir17)
library(ggpubr)


oct <- filter(eirgrid17,month==10)
mh <- filter(observations,month==10,station=="MACE HEAD")
all <- filter(observations,month==10)

oct_summ <- oct |>
             group_by(year,month,day,hour) |>
             summarise(MeanWEGen=mean(IEWindGeneration,na.rm=T),
                       CheckObs=n()) |>
             ungroup()

oct_full <- left_join(oct_summ,mh,by=c("year",
                                     "month",
                                     "day",
                                     "hour"))

all_full <- left_join(oct_summ,all,by=c("year",
                                       "month",
                                       "day",
                                       "hour"))

ggplot(oct_full,aes(x=date))+
  geom_point(aes(y=MeanWEGen),colour="Red")+ 
  geom_line(aes(y=MeanWEGen),colour="Red")+
  geom_point(aes(y=wdsp),colour="Blue")+ 
  geom_line(aes(y=wdsp),colour="Blue")

ggplot(oct_full,aes(x=wdsp,y=MeanWEGen))+
  geom_point()+geom_jitter()+geom_smooth(method="lm")+

ggplot(all_full,aes(x=wdsp,y=MeanWEGen))+
  geom_point()+geom_jitter()+geom_smooth(method="lm")+
  facet_wrap(~station)

ggplot(oct_full,aes(x=temp,y=MeanWEGen))+
  geom_point()+geom_jitter()+geom_smooth(method="lm")

lm1 <- lm(MeanWEGen~wdsp,data=oct_full)

plot(lm1)
d<-density(lm1[['residuals']])
plot(d,main='Residual KDE Plot',xlab='Residual value')


malin_h <- filter(all_full,station=="MALIN HEAD")

lm2 <- lm(MeanWEGen~wdsp,data=malin_h)


  
# compare correlation coefficents for each station
all_full |>
  group_by(station) |>
  summarise(Corr_wdsp=cor(MeanWEGen,wdsp),
            Corr_temp=cor(MeanWEGen,temp),
            Corr_msl=cor(MeanWEGen,msl),
            Corr_rain=cor(MeanWEGen,rain)) |>
  arrange(desc(Corr_wdsp))-> cors

cors


p1 <- ggplot(oct,aes(x=date,y=IEWindGeneration))+geom_point()+geom_line()

p2 <- ggplot(mh,aes(x=date,y=wdsp))+geom_point()+geom_line()

p3 <- ggplot(mh,aes(x=date,y=temp))+geom_point()+geom_line()


ggarrange(p1, p2, p3,ncol = 1)

cor(oct_full[,c("MeanWEGen","rain","temp","rhum","msl","wdsp")],use="na.or.complete")


