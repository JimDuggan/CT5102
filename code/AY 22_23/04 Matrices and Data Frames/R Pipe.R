a1 <- mtcars |>
  as.list() |>
  lapply(function(x)mean(x)) |>
  unlist()

a2 <- mtcars |>
  lapply(function(x)mean(x)) |>
  unlist()