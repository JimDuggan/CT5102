# Part 1
df <- data.frame(table1)

df[c(T,F),3:4]

df[df$country=="Brazil",c("population")]
df[df$country=="Brazil",c("population"),drop=F]


# Part 2
m <- 1:6

attr(m,"dim") <- c(2,3)
rownames(m) <- c("Row 1", "Row 2")
colnames(m) <- c("Col 1", "Col 2", "Col 3") 

# Part 3
l <- list(a=1:2,b="Hello",c=list(d=3:4,e=c(T,F)))

str(l[1:2])

str(l[[2]])

str(l[[3]])

str(l[[3]][1:2])

str(l[[3]][[1]][2])


my_table <- function(v){
  un_vals <- unique(v)
  ans <- vector(mode="integer", length=length(un_vals))
  names(ans) <- as.character(un_vals)
  for(i in seq_along(v)){
    ans[as.character(v[i])] <-  ans[as.character(v[i])] + 1
  }
  
  ans
}

# Part 5
df_t <- data.frame(lapply(df,function(x)ifelse(x>40,NA,x)))
