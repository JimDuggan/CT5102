library(readxl)
library(lubridate)
library(ggplot2)
library(dplyr)

d <- read_xlsx("datasets/OurWorldInData/2021_11_08 owid-covid-data.xlsx")
d$date <- ymd(d$date)

countries <- c("Ireland","Germany")

df1 <- subset(d,location %in% countries) %>%
      filter(new_cases >=0)
df1$cases_per_100K <- 100000*df1$new_cases/df1$population

ggplot(data=df1,aes(x=date,y=cases_per_100K,colour=location))+geom_line()+geom_point()

ggplot(data=filter(df1,location=="Ireland"),aes(x=date,y=new_cases,colour=location))+geom_line()+geom_point()

