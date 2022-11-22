library(dplyr)
library(ggplot2)

student_id <- 1:5
student_name <- c("AA","BB","CC","DD","EE")
subjects    <- sample(c("CX101","CX102","CX103"),5,replace = T)
st_results <- sample(1:3,5,repl=T)
grade <- sample(55:91,5,repl=T)

t1 <- tibble(StudentID=student_id,
             Name=student_name)

t2 <- tibble(StudentID=st_results,
             Subject=subjects,
             Grade=grade)

r1 <- semi_join(t1,t2)

r2 <- anti_join(t1,t2)

ggplot(mpg,aes(x=displ,y=cty,colour=class))+geom_point()+facet_grid(fl~cyl)


library(aimsir17)
library(tidyr)

tb <- observations %>% 
  filter(station %in% c("BELMULLET","DUBLIN AIRPORT","ROCHES POINT")) %>%
  group_by(station,day,month) %>%
  summarise(daily_rain = sum(rain,na.rm=T),
            min_pressure=min(msl)) %>%
  ungroup() %>%
  group_by(station) %>%
  nest()

tb <- mutate(tb,LM=map(data,~lm(daily_rain~min_pressure,data=.)))

tb <- mutate(tb,R.Sq= map_dbl(LM,~summary(.)$r.squared)) %>%
      arrange(desc(R.Sq))

