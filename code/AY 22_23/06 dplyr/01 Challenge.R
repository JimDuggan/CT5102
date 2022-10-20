library(nycflights13)
library(dplyr)


# Had an arrival delay of two or more hours
filter(flights,arr_delay > 120)


# Flew to Houston (IAH or HOU)
filter(flights,arr_delay > 120)
# Departed in the summer (July, August and September)
filter(flights,month == 7 | month == 8 | month ==9)
filter(flights,month == 7,month == 8,month ==9)
filter(flights,month %in% 7:9)

# Arrived more than 2 hours late, but didn’t leave late
filter(flights,arr_delay > 120, dep_delay <=0)


flights |> 
  filter(arr_delay > 120, dep_delay <=0) |> 
       arrange(desc(arr_delay))

flights %>% 
  filter(arr_delay > 120, dep_delay <=0) %>% 
  arrange(desc(arr_delay))


