library(aimsir17)
library(dplyr)
library(purrr)

set.seed(100)
summ <- observations |>
          group_by(station,month,day) |>
          summarise(MeanWind=mean(wdsp,na.rm=T),
                    MeanMSL=mean(msl,na.rm=T)) |>
          ungroup() |>
          sample_frac(.20)

plots <- summ |>
          group_split(station)|>
          map(~ggplot(.,aes(x=MeanMSL,y=MeanWind))+
                geom_point()+geom_smooth()+
                ggtitle(.$station))

library(ggpubr)
ggarrange(plotlist = plots)
  
