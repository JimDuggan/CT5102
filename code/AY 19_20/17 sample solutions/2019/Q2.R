library(dplyr)
library(tidyr)


# Given the following tables

x <- tibble(key=c(1,2,3,5),val_x=c(10,20,30,40))
y <- tibble(key=c(1,2,6,7),val_y=c(5,10,15,20))

# Show what dplyr calls will egnerate the following outputs
semi_join(y,x)

anti_join(x,y)

left_join(y,x)

inner_join(x,y)


# Explain select, mutate, filter, summarise, pull() and case_when()
# Magrittr operator

data <- tibble(Ids=c("1111111","1111112","1111113","1111114","1111115"),
               CS101=c(80,70,24,55,62),
               CS102=c(50,60,54,91,46),
               CS103=c(51,71,48,49,59),
               CS104=c(70,81,58,39,45),
               CS105=c(61,56,68,69,76))

tidy <- gather(data,key=SubjectCode,value=Result,CS101:CS105) %>% 
            mutate(Grade=case_when(
                        Result < 40 ~ "Fail",
                        Result < 50 ~ "Pass",
                        Result < 60 ~ "H2.2",
                        Result < 70 ~ "H2.1",
                        Result <=100 ~ "H1",
                              TRUE ~ "N/A"))  %>%
            group_by(SubjectCode) %>%
            summarise(MeanResult=mean(Result),
                      H1=100*sum(Grade=="H1")/n(),
                      H2.1=100*sum(Grade=="H2.1")/n(),
                      H2.2=100*sum(Grade=="H2.2")/n(),
                      Pass=100*sum(Grade=="Pass")/n(),
                      Fail=100*sum(Grade=="Fail")/n()) %>%
            mutate(Total=H1+H2.1+H2.2+Pass+Fail)

tidy <- gather(data,key=SubjectCode,value=Result,CS101:CS105) %>% 
  mutate(Grade=case_when(
    Result < 40 ~ "Fail",
    Result < 50 ~ "Pass",
    Result < 60 ~ "H2.2",
    Result < 70 ~ "H2.1",
    Result <=100 ~ "H1",
    TRUE ~ "N/A"))  %>%
  group_by(SubjectCode) %>%
  summarise(MeanResult=mean(Result),
            H1=count(Grade=="Fail"),
            H2.1=100*sum(Grade=="H2.1")/n(),
            H2.2=100*sum(Grade=="H2.2")/n(),
            Pass=100*sum(Grade=="Pass")/n(),
            Fail=100*sum(Grade=="Fail")/n()) %>%
  mutate(Total=H1+H2.1+H2.2+Pass+Fail)




