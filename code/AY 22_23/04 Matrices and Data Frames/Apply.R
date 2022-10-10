grades <- sample(30:90,12,replace = T)
results <- matrix(grades,nrow=4)
rownames(results) <- paste0("St-",1:4)
colnames(results) <- paste0("Sub-",1:3)
results

max_gr_student <- apply(results, # the matrix
                        1, # 1 for rows
                        max)

#>
#>