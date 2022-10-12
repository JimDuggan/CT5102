library(ggplot2)

p1 <- ggplot(mpg,aes(x=displ,y=hwy))+
        geom_point()+
        facet_wrap(~class)

p2 <- ggplot(mpg,aes(x=displ,y=hwy,colour=class))+
  geom_point()+
  facet_wrap(~manufacturer)

ggplot(data=mpg,aes(x=displ,y=cty))+
  geom_point()+
  geom_smooth()

ggplot(mpg,aes(x=displ,y=cty))+
  geom_point()+
  geom_jitter()

ggplot(mpg,aes(y=cty,x=class))+geom_boxplot()

ggplot(mpg,aes(y=cty,x=class))+geom_violin()

