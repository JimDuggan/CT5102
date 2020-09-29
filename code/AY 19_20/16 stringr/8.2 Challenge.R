library(stringr)

set.seed(99)

s <- sort(sample(words,size = 50))

str_view(s,"^[aeiou]",match=T)

str_view(s,"^[^aeiou][^aeiou]",match=T)

str_view(s,"[^aeiou][^aeiou]",match=T)

str_view(s,"ing$",match=T)





