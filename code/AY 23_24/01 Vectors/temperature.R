# generate a sample of 20 temperatures from -5 to 30

set.seed(99)

temp <- sample(-5:30,20,replace = T)

t1 <- ifelse(temp < 4, "Cold", "Not Cold")

t2 <- ifelse(temp < 4,"Cold", 
             ifelse(temp>25,"Hot","Medium"))
