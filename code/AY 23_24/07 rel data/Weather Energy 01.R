library(ggplot2)
library(dplyr)
library(aimsir17)

ener <- eirgrid17 %>%
          select(month:date,IEWindGeneration) %>%
          rename(WGen=IEWindGeneration)

ener_g <- ener %>%
           group_by(month,day,hour) %>%
           summarise(AWGen=mean(WGen)) %>%
           ungroup()

oct_2017 <- observations %>%
             filter(station=="MACE HEAD",
                    month==10) %>%
             select(station,month,day,hour,wdsp)

