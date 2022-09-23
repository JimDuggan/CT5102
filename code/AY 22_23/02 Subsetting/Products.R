products <- list(
       A=list(product="A",
              sales=12000,
              quarterly=list(quarter=1:4,
                             sales=c(6000,3000,2000,1000))),
       B=list(product="B",
              sales=8000,
               quarterly=list(quarter=1:4,
                             sales=c(2500,1500,2800,1200))))

# Find the sales of 2800 in Q3 (product B)
sq3_b1 <- products[[2]][[3]][[2]][3]

sq3_b2 <- products[["B"]][["quarterly"]][["sales"]][3]

sq3_b3 <- products$B$quarterly$sales[3]

for (i in seq_along(products)){
  cat("Product = ",products[[i]]$product,
       "Sales = ",products[[i]]$sales,"\n")
  for(j in seq_along(products[[i]]$quarterly)){
    
  }
}




