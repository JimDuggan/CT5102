library(dplyr)
library(tidyr)
library(ggplot2)

t1 <- as_tibble(data.frame(
  Year=c("2017",2017L,2017L,2016L,2016L,2016L),
  Product=c("A","B","C","A","B","C"),
  RegionA=c(1000,200,300,500,100,150),
  RegionB=c(2000,400,600,1000,200,300),
  RegionC=c(3000,600,900,1500,300,450),
  stringsAsFactors = F
))

t2 <- as_tibble(data.frame(
  Product=c("A","B","C"),
  Type=c("Computer","TV","Radio"),
  stringsAsFactors = F
))

td <- gather(t1,key=Region,value =Sales,RegionA:RegionC)

jd <- left_join(td,t2)

jd %>% group_by(Type,Year) %>% summarise(TotalSales=sum(Sales))

jd %>% group_by(Year,Region) %>% summarise(Sales=sum(Sales)) %>% arrange(Year)




