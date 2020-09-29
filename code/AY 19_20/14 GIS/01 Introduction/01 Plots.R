library(GISTools)
data(georgia)

appling <- georgia.polys[[1]]

plot(appling, asp=1, type='n', xlab="Easting", ylab="Northing")
polygon(appling, density=14, angle=135,col=rgb(0,1,0))
