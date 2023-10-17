library(readxl)
library(tidyr)
library(dplyr)
library(ggplot2)

d <- readxl::read_excel("code/AY 23_24/07 rel data/ExamDataBroad.xlsx")

td <- d %>%
        pivot_longer(CX1000:CX1009,
                     names_to = "SubjectCode",
                     values_to = "Result")

ggplot(td,aes(x=SubjectCode,y=Result))+
  geom_boxplot()+theme_classic()

st_sum <- td %>%
           group_by(StudentID) %>%
           summarise(MaxMark=max(Result),
                     MeanMark=mean(Result))

