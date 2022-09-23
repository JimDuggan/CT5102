products <- list(
  A=list(product="A",
         sales=12000,
         quarterly=list(quarter=1:4,
                        sales=c(6000,3000,2000,1000))),
  B=list(product="B",
         sales=8000,
         quarterly=list(quarter=1:4,
                        sales=c(2500,1500,2800,1200))))

product[1]
products[1]
products[[1]]
str(products[[1]])
products
products
unname(products)
unlist(products)
sw_films
LIBRARY(REPURRSIVE)
library(repurrrsive)
sw_films
View(sw_films)
View(products)
products <- list(
  A=list(product="A",
         sales=12000,
         quarterly=list(quarter=1:4,
                        sales=c(6000,3000,2000,1000))),
  B=list(product="B",
         sales=8000,
         quarterly=list(quarter=1:4,
                        sales=c(2500,1500,2800,1200))))
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/02 Subsetting/Products.R")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/02 Subsetting/Products.R")
length(list())
length(products)
names(products)
x1 <- products[1]
str(x1)
x2 <- products$A
str(x2)
products[1]
str(products[1])
str(products[-2])
str(products[c(T,F)])
str(products["A"])
View(products)
View(mtcars)
typeof(mtcars)
mtcars
lm <- as.list(mtcars)
View(lm)
View(products)
products
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/02 Subsetting/Products.R")
products
products <- list(
  A=list(product="A",
         sales=12000,
         quarterly=list(quarter=1:4,
                        sales=c(6000,3000,2000,1000))),
  B=list(product="B",
         sales=8000,
         quarterly=list(quarter=1:4,
                        sales=c(2500,1500,2800,1200))))
products
products[[2]]
str(products[[2]])
products[[2]][[1]]
products[[2]][[2]]
products[[2]][[3]]
products[[2]][[3]][[2]]
products[[2]][[3]][[2]][3]
products[["B"]]
products[["B"]][["quarterly"]]
products[["B"]][["quarterly"]][["sales"]]
products[["B"]][["quarterly"]][["sales"]][3]
products$B$quarterly$sales[3]
sales <- products$B$quarterly$sales
sales
products[[1]]
products[[1]]$product
for (i in seq_along(products)){
  cat("Product = ",products[[i]]$product,"\n")
}
cat("Product = ",products[[i]]$product,
    "Sales = ",products[[i]]$sales,"\n")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/02 Subsetting/Products.R")
products
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/02 Subsetting/StarWars.R")
install.packages("repurrrsive")
install.packages("repurrrsive")
install.packages("aimsir17")
force(sw_films)
View(sw_films)
has_gl <- vector(mode="logical",length = length(sw_films))
has_gl
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/02 Subsetting/StarWars.R")
str(sw_films1)
str(sw_films[[1]])
for(i in seq_along(sw_films)){
  has_gl[i] <- sw_films[[i]]$director=="George Lucas"
}
has_gl
sw_films1 <- sw_films[has_gl]
View(sw_films1)
names_gl <- vector(mode="character",length=length(sw_films1))
names_gl
for(i in seq_along(sw_films1)){
  names_gl[i] <- sw_films[[i]]$title
}
names_gl
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
evens(1:10)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
tc
tc %% 2
tc %% 2 == 0
tc[tc %% 2 == 0]
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
evens(tc)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
evens(tc)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
evens(tc)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
evens(tc)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/First Function.R")
evens(tc)
evens(1:100000)
evens1 <- function (v){
  list(ans=v[v%%2 ==0],
       v_size=length(v))
}
evens1(tc)
evens1 <- function (v){
  list(ans=v[v%%2 ==0],
       v_size=length(v),
       o_vector=v)
}
evens1(tc)
tc <- c(rep(2,3),1:5,rep(7,4))
tc
unique(tc)
duplicated(tc)
?duplicated
!duplicated(tc)
tc
tc[!duplicated(tc)]
my_unique <- function (v){
  dups <- duplicated(v)
  not_dups <- !dups
  v[not_dups]
  # v[!duplicated(v)]
}
my_unique(tc)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/Second Function.R")
my_unique(tc)
my_unique <- function (v){
  browser()
  dups <- duplicated(v)
  not_dups <- !dups
  v[not_dups]
  v
  # v[!duplicated(v)]
}
my_unique(tc)
v
dups <- duplicated(v)
dups
!dups
v[not_dups]
tc
max(tc)
max <- function(v){
  "Hello world"
}
max(tc)
base::max(tc)
max(tc)
tc <- c(rep(2,3),1:5,rep(7,4))
max(tc)
base::max(tc)
source("~/Dropbox/GitHub Clones/CT5102/code/AY 22_23/03 Functions/Second Function.R")
my_unique(my_unique)

