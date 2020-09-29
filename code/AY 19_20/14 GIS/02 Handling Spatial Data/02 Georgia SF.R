library(GISTools)
library(sf)

data(georgia)

georgia_sf <- st_as_sf(georgia)

plot(georgia_sf[,6])
plot(georgia_sf[,c(4,5)])
