x <- sqrt(1:3)
y <- round(x,3)

z <- round(sqrt(1:3),3)

y1 <- 1:3      |> 
        sqrt() |> 
        round(3)

1:3      |> 
  sqrt() |> 
  round(3) -> y2

