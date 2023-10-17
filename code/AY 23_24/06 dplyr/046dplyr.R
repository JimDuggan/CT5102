library(dplyr)
library(aimsir17)


# the tidyverse pipe operator
set.seed(100)
arr   <- rpois(12,50)
arr
# The function sort takes a parameter to sort in descending order
s_arr <- sort(arr,decreasing = TRUE)
top_6 <- head(s_arr)
top_6


set.seed(100)
top_6  <- rpois(12,50) %>%
  sort(decreasing = TRUE) %>%
  head()
top_6


# dplyr::filter()
bel <- filter(observations,station=="BELMULLET")

mhj <- filter(observations, station=="MACE HEAD", month==1)

day <- filter(observations, station %in% c("ATHENRY",
                                           "MACE HEAD"), 
                            month==1,
                            day==1,
                            hour==12)

# dplyr::arrange()
arrange(observations, temp)

arrange(observations, msl)

arrange(observations, month, temp)

arrange(observations, desc(temp))

# dplyr::select()
new_obs <- select(observations,station,year,month,day,hour)

select(observations,station:rain)

select(observations,-(station:rain))

select(observations,starts_with("w"))

select(observations,ends_with("p"))

select(observations,ends_with("p"),everything())

# dplyr::mutate()
CK2Kmh <- 1.852

obs1 <- observations %>%
          select(day, month, station, wdsp) %>%
          filter(station=="ROCHES POINT",
                 day==16,
                 month==10)

obs1 <- mutate(obs1,wdsp_kph=wdsp*CK2Kmh)

obs2 <- observations %>%
          mutate(WW=case_when(
                      temp < 4 ~ TRUE,
                      TRUE ~ FALSE))

summary(obs2$WW)

# dplyr::summarise()
test <- observations %>% 
          filter(station=="MACE HEAD",
                 month==10)

summarise(test,
           station=first(station),
           MaxRain=max(rain),
           MaxTemp=max(temp),
           MinTemp=min(temp))

test_g <- test %>% group_by(day)
test_g

summarise(test_g,
          TotalRainfall=sum(rain,na.rm=T))






