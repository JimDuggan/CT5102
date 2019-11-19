library(stringr)

set.seed(99)

s <- sort(sample(words,size = 50))

str_view(s,"^w",match=T)

str_view(s,"o$",match=T)

str_view(s,"^...$",match=T)



