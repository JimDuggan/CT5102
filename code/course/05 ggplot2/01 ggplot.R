library(ggplot2)

d <- ggplot2::mpg

ggplot(data=mpg)+geom_point(aes(x=displ,y=hwy),colour="blue")

ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy),
                position="jitter",colour="blue")

ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy,colour=class),
             position="jitter")

ggplot(data=mpg)+
  geom_jitter(mapping=aes(x=displ,y=hwy,colour=class),alpha=0.25)




# Facets

ggplot(data=mpg) + 
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(drv ~ cyl)

ggplot(data=mpg) + 
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data=mpg) + 
  geom_point(mapping = aes(x=displ, y = hwy)) +
  facet_grid(cyl ~ .)


ggplot(data=d)+geom_point(aes(x=displ,y=hwy),colour="blue")+
  geom_point(aes(x=displ,y=cty),colour="green")

ggplot(data=diamonds)+geom_point(mapping = aes(x=carat,y=price))

ggplot(data=mpg)+
  geom_point(mapping=aes(x=displ,y=hwy))

ggplot(data=mpg)+
  geom_smooth(mapping=aes(x=displ,y=hwy))

ggplot(data=mpg, mapping = aes(x=displ, y= hwy)) +
  geom_point(aes(colour=class)) + geom_smooth()


ggplot(data=mpg,mapping=aes(x=displ,y=hwy))+
  geom_point(mapping=aes(colour=class))+
  geom_smooth(data=filter(mpg,class=="subcompact"),
              se=F)+
  geom_smooth(data=filter(mpg,class=="suv"),
              se=F,colour="red")


ggplot(data=mpg,mapping=aes(x=displ,y=hwy))+
  geom_point()+
  geom_smooth()

ggplot()+
  geom_point(data=mpg,mapping=aes(x=displ,y=hwy))+
  geom_smooth(data=mpg,mapping=aes(x=displ,y=hwy))
  
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data=agr) +
  geom_bar(mapping = aes(x = cut, y=Count), stat="identity")

agr <- diamonds %>% group_by(cut) %>% summarise(Count=n())

ggplot(data=agr) +
  geom_bar(mapping = aes(x = cut, y=Count), 
           stat="identity")

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,colour=cut))

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=cut))

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity))


ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity),
           position="fill")

ggplot(data=diamonds) +
  geom_bar(mapping=aes(x=cut,fill=clarity),
           position="dodge")
 



ggplot(data=diamonds,mapping=aes(x=carat)) +
  geom_histogram(binwidth = 0.01)

ggplot(data=diamonds,mapping=aes(x=price)) +
  geom_histogram(binwidth = 0.01)

ggplot(data=diamonds,mapping=aes(x=price)) +
  geom_histogram(binwidth = 500)

ggplot(data=mpg,mapping=aes(x=hwy)) +
  geom_histogram(binwidth = 2)+
  facet_wrap(~class)

ggplot(data=mpg,mapping=aes(x="",y=hwy)) +
  geom_boxplot()

ggplot(data=mpg,mapping=aes(x=class,y=hwy)) +
  geom_boxplot()



ggplot(data=diamonds,mapping=aes(x=cut,y=price,fill=cut)) +
  geom_boxplot()


ggplot(data=diamonds) +
  geom_bar(mapping = aes(x = cut))

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x = cut)) + coord_flip()

nz <- map_data("nz")

ggplot(nz, aes(long,lat, group=group)) +
  geom_polygon(fill="white",colour="black")

ggplot(nz, aes(long,lat, group=group)) +
  geom_polygon(fill="white",colour="black") +
  coord_quickmap()

ggplotly(ggplot(data=diamonds) +
           geom_bar(mapping=aes(x=cut,fill=clarity)))

p1 <- ggplot(data=diamonds) +
           geom_bar(mapping=aes(x=cut,fill=clarity))










