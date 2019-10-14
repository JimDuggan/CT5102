setClass("Person",
         slots = c(
           name = "character",
           age  = "numeric"
         )
)

john <- new("Person", name = "John Smith", age=35)


setGeneric("age", function(x)standardGeneric("age")) # getter
setGeneric("age<-", function(x, value)standardGeneric("age<-")) # setter

setMethod("age", "Person", function(x) x@age)

setMethod("age<-", "Person", function(x, value){
  x@age <- value
  x
})
