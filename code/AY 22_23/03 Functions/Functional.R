my_summary <- function(v, fn){
  browser()
  fn(v)
}

set.seed(1000)
tc <- sample(1:10,5)

my_summary(tc,min)
my_summary(tc,max)

ans <- my_summary(tc,function(v){
  list(data=v,
       min=min(v),
       sum=sum(v))
})




