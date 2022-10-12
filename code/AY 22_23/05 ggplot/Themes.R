# Eight themes built into ggplot

library(ggplot2)
library(bbplot)

t1 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
        geom_point() + theme_bw()

t2 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_classic()

t3 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_dark()


t4 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_gray()


t5 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_light()


t6 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_linedraw()


t7 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_minimal()


t8 <- ggplot(data=mpg,aes(x=displ,y=cty)) +
  geom_point() + theme_void()

b1 <- ggplot(data=mpg,aes(x=displ,y=cty,colour=class)) +
  geom_point()+ bbc_style()




