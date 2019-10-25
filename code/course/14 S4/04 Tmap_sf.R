library(GISTools)
library(sp)
library(sf)
library(tmap)

data(georgia)
georgia_sf <- st_as_sf(georgia)
georgia_sf[1:2,]
qtm(georgia_sf,fill="red",style="natural")

qtm(georgia_sf,fill="MedInc",text="Name",text.size=0.5,
    format="World_wide",style="classic",
    text.root=5,fill.title="Median Income")


