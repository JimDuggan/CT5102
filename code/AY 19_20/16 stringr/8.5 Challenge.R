library(stringr)

s <- sentences[1:5]

m<- str_match(s,"(^[^ ]+) (.+) ([^ ]+)\\.$")


ans <- str_replace(s,"(^[^ ]+) (.+) ([^ ]+)\\.$",
                   "\\3 \\2 \\1.")

ans2 <- str_replace(s,"(^[^ ]+) (.+) ([^ ]+)\\.$",
                   "\\2 \\3 \\1.")
