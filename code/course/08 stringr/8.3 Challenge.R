library(stringr)

set.seed(99)

s <- sort(sample(words,size = 50))

str_view(s,"^[^aeiou]{2}",match=T)

str_view(s,"[aeiou]{3}",match=T)



