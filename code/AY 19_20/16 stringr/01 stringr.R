s1 <- "This is a string"

s2 <- 'This is a string too'

s3 <- c("One","Two three")

str_c("x","y")

str_c("x","y","z")

str_c("x","y","z",sep="-")

str_c(c("x","y","c"),"ab")

str_c(c("x","y","c"),"ab",
      collapse = "")

x <- c("Apple","Banana","Pear")
str_sub(x,1,3)

x <- c("Apple","Banana","Pear")
str_view(x,"an")

x <- c("Apple","Banana","Pear")
str_view(x,".a.")

y <- c("abc","a.c","bef")
str_view(y,"a\\.c")


x <- c("apple pie","apple","apple cake")
str_view(x,"^apple",match=T)
str_view(x,"^apple$")












str_sub(x, -3, -1)
y <- c("abc","abc1")


str_view(y,"\\d")

str_view(c("grey","gray"),"gr(e|a)y")

x <- "1888: MDCCCLXXXVIII"

x <- "AACABCDDD"

str_view(x,"CD?")
str_view(x,"CD+")
str_view(x,"CD*")

x <- "AACABCDDD"

str_view(x,"A{2}")
str_view(x,"D{1,}")
str_view(x,"D{2,3}")
str_view(x,"D{2,3}?")

x <- c("apple", "banana","pear")

str_detect(x,"e")

df <- tibble(word=words,i=seq_along(words))

df %>% 
  mutate(
    vowels = str_count(word,"[aeiou]"),
    consonants = str_count(word,"[^aeiou]")
  )

colours <- c(
  "red","orange","yellow","green","blue","purple"
)

col_match <- str_c(colours,collapse = "|")

col_match

has_colour <- str_subset(sentences, col_match)
matches <- str_extract(has_colour,col_match)
head(matches)

more <- sentences[str_count(sentences,col_match) > 1]


noun <- "(a|the) ([^ ]+)"

has_noun <- sentences %>%
  str_subset(noun) %>%
  head(10)

has_noun %>%
  str_extract(noun)

has_noun %>%
  str_match(noun)

has_noun %>%
  str_extract_all(noun,simplify=T)

has_noun %>%
  str_match_all(noun)

tibble(sentence=sentences) %>%
  tidyr::extract(
    sentence,c("article","noun"),"(a|the) ([^ ]+)",
    remove=F
  )


x <- c("apple","pear","banana")

x

str_replace(x,"[aeiou]","_")

str_replace_all(x,"[aeiou]","_")

x <- c("1 house","2 cars","3 people")

str_replace_all(x,c("1"="one","2"="two","3"="three"))


sentences %>% 
  str_replace("([^ ]+) ([^ ]+)","\\2 \\1") %>%
  head(5)

x <- "This is a sentence"

x

str_split(x, " ")

str_split(x, " ",simplify = T)

x <- c("APPLE","aPPle","Apple")

x[str_detect(x,regex("apple",ignore_case=T))]

phone <- regex("
  \\(?     # optional opening parens
  (\\d{3}) # area code
  [)- ]?   # optional closing parens, dash, or space
  (\\d{3}) # another three numbers
  [ -]?    # optional space or dash
  (\\d{4}) # four more numbers
  ", comments=TRUE)

str_match("514-791-8111",phone)
















