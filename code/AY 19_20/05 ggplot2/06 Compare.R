library(ggplot2)
d<-mpg
ggplot(d) + 
  geom_point(aes(x=displ,y=hwy),
             colour="blue")+
  geom_point(aes(x=displ,y=cty),
             colour="red")

ggplot(d)+geom_point(aes(x=displ,y=hwy,
                         colour=class,size=cyl))

ggplot(data=d)+
  geom_point(aes(x=displ,y=hwy,colour=class))+
  facet_grid(drv~cyl)

ggplot(data=d)+
  geom_point(aes(x=displ,y=hwy,colour=manufacturer))+
  facet_grid(drv~cyl)

ggplot(d) + 
  geom_density(aes(x=cty),colour="blue")+
  geom_density(aes(x=hwy),colour="red")
  
  