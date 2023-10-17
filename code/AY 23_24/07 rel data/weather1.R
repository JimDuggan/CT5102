library(aimsir17)
library(dplyr)

# get the station information for each observation

obs_stations <- left_join(observations,
                          stations,
                          by="station",
                          keep=TRUE)

temp_s <- obs_stations %>%
            group_by(county) %>%
            summarise(MaxTemp=max(temp,na.rm=T),
                      MaxIndex=which.max(temp)) %>%
            arrange(desc(MaxTemp))

