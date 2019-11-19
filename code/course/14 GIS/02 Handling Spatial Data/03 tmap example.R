data("georgia")
library(tmap)

georgia_sf <- st_as_sf(georgia)

# Quick thematic map plot
qtm(georgia_sf, fill="red",style="natural")

