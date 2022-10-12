p1 <- ggplot(data=mpg,mapping = aes(x=displ,y=hwy))+
        xlab("Engine Size")+
        ylab("Highway Miles Per Gallon")+
        geom_point()+
        geom_smooth(method="lm")

