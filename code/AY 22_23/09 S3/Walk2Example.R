library(purrr)

l <- mtcars |> head() |> as.list()

walk2(names(l),l,~{
  cat("name = ",.x," mean = ",mean(.y),"\n")
})
