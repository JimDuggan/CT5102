#Create a vector of random numbers between 30 and 90 (random grades for an test)
#Create a new (parallel) vector that categorises results as follows:
#  Greater or equal to 60 – Honours
#  Between 40 and 59 – Pass
#  Less than 40 – Fail 
#  Use the ifelse() (vectorised) function

grades <- sample(30:90,100, replace = T)

outcome <- ifelse(grades<40,"Fail",ifelse(grades<60,"Pass","Honours"))



