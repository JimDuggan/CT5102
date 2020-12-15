
# explain the following code
myarray <- function (n){
  structure(list(data=vector(mode = "numeric", length = n)),
            class="myarray")
}

# write functions for the S3 class "myarray" to do the following
`[.myarray` <- function(o, i){
  o$data[i]
}

`[<-.myarray` <- function(o,r,value1){
  o$data[r]<-value1
  o
}

summary.myarray <- function(o){
  cat("Array Size = ", length(o$data),"\n")
  cat("Values = [",o$data,"]\n")
}

`<.myarray` <- function(o,v){
  o$data < v
}

`>.myarray` <- function(o,v){
  o$data > v
}

`<=.myarray` <- function(o,v){
  o$data <= v
}

`>=.myarray` <- function(o,v){
  o$data >= v
}

`!=.myarray` <- function(o,v){
  o$data != v
}

`==.myarray` <- function(o,v){
  o$data == v
}

myclass.print <- function(o){
  cat("Nrows = ",nrow(o)," Ncols = ",ncol(o),"\n")
  print(data.frame(o))
}