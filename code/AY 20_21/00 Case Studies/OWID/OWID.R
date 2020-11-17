library(readxl)
library(dplyr)
library(ggplot2)
library(lubridate)

d <- read_xlsx("datasets/OurWorldInData/201024 owid-covid-data.xlsx")

t <- c("Ireland","Sweden","Portugal")

d1 <- d %>% 
         filter(location %in% t, date > "2020-02-29") %>% 
         select(date, location, new_cases,new_cases_per_million) %>%
         mutate(date=ymd(date))

ggplot(d1,aes(x=date,y=new_cases,colour=location))+
  geom_point()+geom_line()

ggplot(d1,aes(x=date,y=new_cases_per_million,colour=location))+
  geom_point()+geom_line()

ggplot(d1,aes(x=date,y=new_cases,colour=location))+geom_point()+geom_line()+geom_smooth()

ggplot(d1,aes(x=date,y=new_cases_per_million,colour=location))+geom_point()+geom_line()+geom_smooth()

ggplot(filter(d1,location=="Ireland"),aes(x=date,y=new_cases,colour=location))+
  geom_point()+geom_line()+geom_smooth()

