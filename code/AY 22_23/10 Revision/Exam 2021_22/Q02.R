library(aimsir17)
library(dplyr)


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

month_r <- observations %>% group_by(station, month) %>%
            summarise(TotalRain=sum(rain,na.rm=T)) %>%
            arrange(month,station)

month_c <- left_join(month_r,stations,by="station") %>%
            select(-(height:longitude))

county_avr <- month_c %>% group_by(month,county) %>%
                 summarise(MeanRain=mean(TotalRain)) %>%
                 arrange(desc(MeanRain))


library(ggplot2)

ggplot(mpg, aes(x=displ,y=hwy,colour=manufacturer,shape=drv))+
       geom_point()+facet_wrap(~class)
                 