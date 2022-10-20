# Organise the following into a pipeline command
# Subset all observations from aimsir17 from October 2017
# Select all those from “ROCHES POINT”
# Sort the observations by wind speed (descending)
# Select the top five (see the dplyr function slice)
# Store in a result tibble
library(aimsir17)
library(dplyr)

rp <- observations |>
       filter(station=="ROCHES POINT") |>
       arrange(desc(wdsp)) |>
       slice(1:5) |>
       select(date,wdsp)

observations |>
  filter(station=="ROCHES POINT") |>
  arrange(desc(wdsp)) |>
  slice(1:5) -> rp1

