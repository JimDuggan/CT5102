library(repurrrsive)

# We want to create an atomic vector of the 
# George Lucas movies

# (1) We could include all the movies that have G. Lucas
# as director. How? Logical filtering?

has_gl <- vector(mode="logical",length = length(sw_films))

for(i in seq_along(sw_films)){
  has_gl[i] <- sw_films[[i]]$director=="George Lucas"
}

sw_films1 <- sw_films[has_gl]

names_gl <- vector(mode="character",length=length(sw_films1))

for(i in seq_along(sw_films1)){
  names_gl[i] <- sw_films[[i]]$title
}


