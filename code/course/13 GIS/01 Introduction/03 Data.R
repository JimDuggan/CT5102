library(GISTools)
library(ggplot2)
library(tibble)

tb <- as_tibble(georgia)

ggplot(tb,aes(x=MedInc))+geom_histogram(binwidth = 5000,colour="red",fill="grey")



ggplot(tb, aes(IncClass, PctBach, fill=factor(rural))) +
  geom_boxplot()


