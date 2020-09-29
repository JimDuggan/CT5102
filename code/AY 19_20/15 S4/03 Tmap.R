library(GISTools)
library(sp)
library(tmap)

data(georgia)
qtm(georgia,fill="red",style="natural")

qtm(georgia,fill="MedInc",text="Name",text.size=0.5,
    format="World_wide",style="classic",
    text.root=5,fill.title="Median Income")


