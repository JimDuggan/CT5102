library(stringr)

set.seed(99)

s <- sort(sample(words,size = 50))

w <- s[str_detect(s,"^[aeiou].+[^aeiou]$")]

count <- str_count(s,"[aeiou]")
s[which.max(count)]

sub <- str_subset(s,"acc")
