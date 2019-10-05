library(GISTools)
library(ggplot2)

data(georgia)

appling <- data.frame(georgia.polys[[1]])
colnames(appling) <- c("X","Y")

p1 <- ggplot(data=appling,aes(x=X,y=Y))+geom_point()+geom_path()

p2 <- ggplot(data=appling,aes(x=X,y=Y))+
        geom_polygon(fill=I(rgb(1,.5,.5,0.2)))+coord_fixed()

p3 <- ggplot(data=appling,aes(x=X,y=Y))+
  geom_polygon()+coord_quickmap()

