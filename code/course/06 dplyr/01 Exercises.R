library(nycflights13)
library(dplyr)
library(stringr)

# 1 (a) Flights that had an arrival delay of two or more hours
flights %>% filter(arr_delay >= 120)

# 1 (b) Flights that flew to Houston
flights %>% filter(dest %in% c("IAH","HOU"))

# 1 (c) Were operated by United, American or Delta
codes <- airlines %>% filter(str_detect(name, "United|American|Delta")) %>% select(carrier)
flights %>% filter(carrier %in% unlist(codes))

# 1 (d) Departed in Summer (July, August and September)
flights %>% filter(between(month,7,9))


# 1 (e) Arrived more than two hours late, but did not leave late
flights %>% filter(dep_delay < 0 & arr_delay > 120)


# 1 (f) Departed between midnight and 6AM
flights %>% filter(between(dep_time,0,600)) %>% arrange(dep_time)

# 3 How many flights had a missing dep_time? What other vars are missing? What might these rows represent?
filter(flights,is.na(dep_time)) %>% nrow()


