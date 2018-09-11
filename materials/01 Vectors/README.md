Lecture 1 - Summary
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
Here are some of the key points from the lecture. See also the sample code solutions in the code folder.

-   Atomic vectors have only one data type.

``` r
v1 <- 1:5
str(v1)
```

    ##  int [1:5] 1 2 3 4 5

``` r
v2 <- c(T,F)
str(v2)
```

    ##  logi [1:2] TRUE FALSE

-   When combining different data types in a vector, R will coerce to the most flexible data type

``` r
v3 <- c(v1, v2)
str(v3)
```

    ##  int [1:7] 1 2 3 4 5 1 0

-   Functions covered in the lecture include **c()**, **rep()**, **str()**, **min()**, **max()**, **median()**, **mean()**, **names()**

-   R supports vectorisation, whereby the same function can be applied to each element. For example:

``` r
x1 <- (1:5)^2
y1 <- sqrt(x1)
print(y1)
```

    ## [1] 1 2 3 4 5

-   Filtering a vector starts with an index value of 1.

``` r
u1 <- 1:10
y1 <- u1[1]
print(y1)
```

    ## [1] 1

``` r
y2 <- u1[1:2]
print(y2)
```

    ## [1] 1 2

-   A vector can be filtered on the element name also

``` r
u2 <- 1:5
names(u2) <- c("p1","p2","p3","p4","p5")
print(u2)
```

    ## p1 p2 p3 p4 p5 
    ##  1  2  3  4  5

``` r
print(u2["p3"])
```

    ## p3 
    ##  3

-   A logical vector can be used to filter a vector. For example, to print every second element of a vector, the following can be used:

``` r
x1 <- (1:10)^2
y1 <- x1[c(T,F)]
print(y1)
```

    ## [1]  1  9 25 49 81

-   The function **which()** can find the index for a value

``` r
x1 <- (1:10)^2
loc <- which(x1 == 81)
print(x1)
```

    ##  [1]   1   4   9  16  25  36  49  64  81 100

``` r
print(loc)
```

    ## [1] 9

``` r
print(x1[which(x1==81)])
```

    ## [1] 81
