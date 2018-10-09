library(ggplot2)

ggplot(data=mpg) + 
  geom_point(aes(x=displ,y=hwy),colour="red")

ggplot(data=mpg,aes(x=displ,y=hwy)) + 
  geom_point()+geom_smooth()+ggtitle("My Graph")+
  ylab("The y Axis")

ggplot(data=mpg) + 
  geom_point(aes(x=displ,y=cty),colour="red")+
  geom_point(aes(x=displ,y=hwy),colour="blue")+
  ylab("MPG")+xlab("Displacement")

ggplot(data=mpg)+
  geom_point(aes(x=displ,y=hwy,colour=class))
ggplot(data=mpg)+
  geom_point(aes(x=displ,y=hwy,colour=manufacturer))
