library(readr)
library(dplyr)

# The following are heights of students from Hope College.  The
# data were collected in the early 1990's.  Gender 1 is female and 
# Gender 2 is male.

# http://www.math.hope.edu/swanson/data/heights.txt

d <- read_csv("11 R Markdown/Examples/HopeCollegeHeights.csv")

d <- d %>% mutate(Gender=as.factor(ifelse(Gender==1,"Female","Male")))

sd <- d %>% group_by(Gender) %>% 
              summarise(Mean=mean(Height),
                        Median=median(Height),
                        SDev=sd(Height),
                        Number=n()
                        )

ggplot(d, aes(Height, fill = Gender)) + 
  geom_histogram(binwidth = 1)

ggplot(d, aes(Height)) + geom_histogram(binwidth = 1) + facet_grid(Gender ~ .)

males   <- d %>% filter(Gender=="Male")   %>% 
  select(Height) %>% pull()

females <- d %>% filter(Gender=="Female") %>% 
  select(Height) %>%pull()

t <- t.test(males,females)

