my_df <- data.frame(Col1=1:3,Col2=c("X","Y","Z"),Col3=11:13)

my_df[1,2] <- NA
my_df[3,1] <- NA

ans1 <- complete.cases(my_mtcars)

ans2 <- apply(my_df,1,function(x) all(!is.na(x)))


