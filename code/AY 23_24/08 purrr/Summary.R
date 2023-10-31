library(aimsir17)

observations %>%
  group_by(station) %>%
  group_split() %>%
  map_df(~tibble(station=first(.$station),
                               TotalRain=sum(.$rain,na.rm=TRUE)))

observations %>%
  group_by(station) %>%
  summarise(TotalRain=sum(rain,na.rm=TRUE))

observations %>%
  group_by(station) %>%
  nest() %>%
  mutate(TotalRain=map_dbl(data,~
                              sum(.$rain,na.rm=TRUE)))

                 