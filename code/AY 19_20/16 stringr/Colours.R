colours <- c(
  "red","orange","yellow","green","purple","blue"
)

col_match  <- str_c(colours,collapse = "|")

has_colour <- str_subset(sentences,col_match)

matches <- str_extract(has_colour,col_match)

str_extract_all(has_colour,col_match,simplify = T)


