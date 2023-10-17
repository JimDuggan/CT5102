library(ggplot2)
library(GGally)



ggplot(mpg,aes(x=displ,y=hwy))+
  geom_point()

ggplot(mpg,aes(x=displ,y=hwy,colour=class))+
  geom_point()

p1 <- ggplot(data=mpg,aes(x=displ,y=hwy,size=cyl,colour=class))+
  geom_point()

p1 <- p1 + 
  labs(
    title = "Exploring automobile relationships",
    subtitle = "Displacement v Highway Miles Per Gallon",
    colour = "Class of Car",
    size = "Cylinder Size",
    caption = "This is a sample chart to show how we can use the lab() function",
    tag = "A",
    x = "Displacement (Litres)",
    y = "Highway Miles Per Gallon"
  )

p1 + bbc_style()

p1 + theme_economist()

p1 + theme_economist_white()

ggplot(data=mpg,aes(x=displ,y=cty))+
  geom_point()+
  facet_wrap(~class)

summary(diamonds$cut)

ggplot(data=diamonds,mapping=aes(x=cut))+
  geom_bar()


ggplot(data=diamonds,mapping=aes(x=cut,fill=color))+
  geom_bar()

ggplot(data=mpg,mapping=aes(y=cty,x=class))+
  geom_boxplot()


my_vars <- subset(mpg,select=c(cty,hwy,displ))
ggpairs(my_vars)

ggplot(data=mpg,mapping=aes(y=cty,x=class))+
  geom_boxplot()+
  theme_classic()

ggplot(data=mpg,mapping=aes(y=cty,x=class))+
  geom_boxplot()+
  theme_void()


ggplot(data=mpg,mapping=aes(y=cty,x=manufacturer))+
  geom_boxplot()+
  geom_hline(yintercept = mean(mpg$cty),colour="red")

