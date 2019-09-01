Lecture 2 (Lists and Functions) - Summary
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
Here are some of the key points from the lecture. See also the sample code solutions in the code folder.

-   Unlike atomic vectors, lists can contain many different types (incuding lists)

``` r
l <- list(1:3, "Test",c(T,F,T,T))
str(l)
```

    ## List of 3
    ##  $ : int [1:3] 1 2 3
    ##  $ : chr "Test"
    ##  $ : logi [1:4] TRUE FALSE TRUE TRUE

-   Lists can be subsetted like an atomic vector. There are two ways to subset, preserving \[\] and simplifying \[\[\]\]

``` r
l <- list(1:3, list(2:3,4:5))
str(l)
```

    ## List of 2
    ##  $ : int [1:3] 1 2 3
    ##  $ :List of 2
    ##   ..$ : int [1:2] 2 3
    ##   ..$ : int [1:2] 4 5

``` r
# this preserves the list structure
l1 <- l[1]
str(l1)
```

    ## List of 1
    ##  $ : int [1:3] 1 2 3

``` r
# This simplifies (and returns the contents of the first element)
c1 <- l[[1]]
str(c1)
```

    ##  int [1:3] 1 2 3

``` r
# This finds the second vector that is part of the 2nd list element
c2 <- l[[2]][[2]]
str(c2)
```

    ##  int [1:2] 4 5

``` r
# This finds the first element of the first vector that is part of the 2nd list element
c3 <- l[[2]][[1]][1]
str(c3)
```

    ##  int 2

-   Here is a nice example of how a list is used in machine learning/data science

``` r
mod <- lm(data=datasets::faithful,eruptions~waiting)
str(mod)
```

    ## List of 12
    ##  $ coefficients : Named num [1:2] -1.874 0.0756
    ##   ..- attr(*, "names")= chr [1:2] "(Intercept)" "waiting"
    ##  $ residuals    : Named num [1:272] -0.5006 -0.4099 -0.3895 -0.5319 -0.0214 ...
    ##   ..- attr(*, "names")= chr [1:272] "1" "2" "3" "4" ...
    ##  $ effects      : Named num [1:272] -57.522 16.9256 -0.365 -0.4885 -0.0143 ...
    ##   ..- attr(*, "names")= chr [1:272] "(Intercept)" "waiting" "" "" ...
    ##  $ rank         : int 2
    ##  $ fitted.values: Named num [1:272] 4.1 2.21 3.72 2.81 4.55 ...
    ##   ..- attr(*, "names")= chr [1:272] "1" "2" "3" "4" ...
    ##  $ assign       : int [1:2] 0 1
    ##  $ qr           :List of 5
    ##   ..$ qr   : num [1:272, 1:2] -16.4924 0.0606 0.0606 0.0606 0.0606 ...
    ##   .. ..- attr(*, "dimnames")=List of 2
    ##   .. .. ..$ : chr [1:272] "1" "2" "3" "4" ...
    ##   .. .. ..$ : chr [1:2] "(Intercept)" "waiting"
    ##   .. ..- attr(*, "assign")= int [1:2] 0 1
    ##   ..$ qraux: num [1:2] 1.06 1.08
    ##   ..$ pivot: int [1:2] 1 2
    ##   ..$ tol  : num 1e-07
    ##   ..$ rank : int 2
    ##   ..- attr(*, "class")= chr "qr"
    ##  $ df.residual  : int 270
    ##  $ xlevels      : Named list()
    ##  $ call         : language lm(formula = eruptions ~ waiting, data = datasets::faithful)
    ##  $ terms        :Classes 'terms', 'formula'  language eruptions ~ waiting
    ##   .. ..- attr(*, "variables")= language list(eruptions, waiting)
    ##   .. ..- attr(*, "factors")= int [1:2, 1] 0 1
    ##   .. .. ..- attr(*, "dimnames")=List of 2
    ##   .. .. .. ..$ : chr [1:2] "eruptions" "waiting"
    ##   .. .. .. ..$ : chr "waiting"
    ##   .. ..- attr(*, "term.labels")= chr "waiting"
    ##   .. ..- attr(*, "order")= int 1
    ##   .. ..- attr(*, "intercept")= int 1
    ##   .. ..- attr(*, "response")= int 1
    ##   .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
    ##   .. ..- attr(*, "predvars")= language list(eruptions, waiting)
    ##   .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
    ##   .. .. ..- attr(*, "names")= chr [1:2] "eruptions" "waiting"
    ##  $ model        :'data.frame':   272 obs. of  2 variables:
    ##   ..$ eruptions: num [1:272] 3.6 1.8 3.33 2.28 4.53 ...
    ##   ..$ waiting  : num [1:272] 79 54 74 62 85 55 88 85 51 85 ...
    ##   ..- attr(*, "terms")=Classes 'terms', 'formula'  language eruptions ~ waiting
    ##   .. .. ..- attr(*, "variables")= language list(eruptions, waiting)
    ##   .. .. ..- attr(*, "factors")= int [1:2, 1] 0 1
    ##   .. .. .. ..- attr(*, "dimnames")=List of 2
    ##   .. .. .. .. ..$ : chr [1:2] "eruptions" "waiting"
    ##   .. .. .. .. ..$ : chr "waiting"
    ##   .. .. ..- attr(*, "term.labels")= chr "waiting"
    ##   .. .. ..- attr(*, "order")= int 1
    ##   .. .. ..- attr(*, "intercept")= int 1
    ##   .. .. ..- attr(*, "response")= int 1
    ##   .. .. ..- attr(*, ".Environment")=<environment: R_GlobalEnv> 
    ##   .. .. ..- attr(*, "predvars")= language list(eruptions, waiting)
    ##   .. .. ..- attr(*, "dataClasses")= Named chr [1:2] "numeric" "numeric"
    ##   .. .. .. ..- attr(*, "names")= chr [1:2] "eruptions" "waiting"
    ##  - attr(*, "class")= chr "lm"

``` r
summary(mod)
```

    ## 
    ## Call:
    ## lm(formula = eruptions ~ waiting, data = datasets::faithful)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -1.29917 -0.37689  0.03508  0.34909  1.19329 
    ## 
    ## Coefficients:
    ##              Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept) -1.874016   0.160143  -11.70   <2e-16 ***
    ## waiting      0.075628   0.002219   34.09   <2e-16 ***
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.4965 on 270 degrees of freedom
    ## Multiple R-squared:  0.8115, Adjusted R-squared:  0.8108 
    ## F-statistic:  1162 on 1 and 270 DF,  p-value: < 2.2e-16

-   Functions are defined using the keyword function, and return the last evaluated expression

``` r
evens <- function (v){
  v[v %% 2 == 0]
}

evens(1:10)
```

    ## [1]  2  4  6  8 10

-   Functions can be passed to functions

``` r
t1 <- function (f, v){
  f(v)
}

t1(min,1:10)
```

    ## [1] 1

``` r
t1(max,1:10)
```

    ## [1] 10

``` r
t1(sum,1:10)
```

    ## [1] 55

-   Functions can have default values

``` r
evens <- function (v, dec=F){
  sort(v[v %% 2 == 0],decreasing=dec)
}

evens(1:10)
```

    ## [1]  2  4  6  8 10

``` r
evens(1:10, dec = T)
```

    ## [1] 10  8  6  4  2

-   When functions are created, they have access to all the variables defined in that environment

``` r
c<-10
test <- function (a, b){
  a+b+c
}

test(10,20)
```

    ## [1] 40

-   The environment in R is a hierarchy, with the Global Environment at the bottom of this structure.

``` r
search()
```

    ## [1] ".GlobalEnv"        "package:stats"     "package:graphics" 
    ## [4] "package:grDevices" "package:utils"     "package:datasets" 
    ## [7] "package:methods"   "Autoloads"         "package:base"

-   You can find the parent of any environment

``` r
parent.env(globalenv())
```

    ## <environment: package:stats>
    ## attr(,"name")
    ## [1] "package:stats"
    ## attr(,"path")
    ## [1] "/Library/Frameworks/R.framework/Versions/3.5/Resources/library/stats"

-   R will find the first occurance of a variable/function in the hierachy. For example

``` r
environment(mean)
```

    ## <environment: namespace:base>

``` r
x <- mean(1:10)
x
```

    ## [1] 5.5

-   You can create a function with the same name as another function (in a different package) in your Global Envirnoment. This could lead to tricky situations.

``` r
mean<-function(v)max(v)
environment(mean)
```

    ## <environment: R_GlobalEnv>

``` r
x <- mean(1:10)
x
```

    ## [1] 10

-   You can also ensure that you call the correct function by prefixing the package name and using ::

``` r
mean<-function(v)max(v)
environment(mean)
```

    ## <environment: R_GlobalEnv>

``` r
x <- base::mean(1:10)
x
```

    ## [1] 5.5
