library(dplyr)
library(purrr)
library(repurrrsive)

sw_t <- sw_films %>%
          map_df(function(y)
            tibble(Episode_Id=y$episode_id,
                   Title=y$title,
                   Director=y$director,
                   Date=as.Date(y$release_date)))
            