numbers <- c("100-1234567",
             "101-1234568")

str_match(numbers,"(\\d{3,3})[-](\\d{7,7})")


