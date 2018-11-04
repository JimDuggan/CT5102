Lecture 7 (Relational Data and tidyr) - Summary
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
The package **dplyr** also supports mutating and filtering joins. For the following two tables, we can explore different functions to join the tables.

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
tab_x <- tibble(key=c(1,2,3),
                val_x=c("x1","x2","x3"))

tab_x
```

    ## # A tibble: 3 x 2
    ##     key val_x
    ##   <dbl> <chr>
    ## 1     1 x1   
    ## 2     2 x2   
    ## 3     3 x3

``` r
tab_y <- tibble(key=c(1,2,4),
                val_y=c("y1","y2","y3"))

tab_y
```

    ## # A tibble: 3 x 2
    ##     key val_y
    ##   <dbl> <chr>
    ## 1     1 y1   
    ## 2     2 y2   
    ## 3     4 y3

-   **inner\_join()** matches pairs of observations when their keys are equal. Unmatched rows are not included in the result.

``` r
inner_join(tab_x,tab_y)
```

    ## Joining, by = "key"

    ## # A tibble: 2 x 3
    ##     key val_x val_y
    ##   <dbl> <chr> <chr>
    ## 1     1 x1    y1   
    ## 2     2 x2    y2

-   **left\_join()** keeps all observations in x

``` r
left_join(tab_x,tab_y)
```

    ## Joining, by = "key"

    ## # A tibble: 3 x 3
    ##     key val_x val_y
    ##   <dbl> <chr> <chr>
    ## 1     1 x1    y1   
    ## 2     2 x2    y2   
    ## 3     3 x3    <NA>

-   **right\_join()** keeps all observations in y

``` r
right_join(tab_x,tab_y)
```

    ## Joining, by = "key"

    ## # A tibble: 3 x 3
    ##     key val_x val_y
    ##   <dbl> <chr> <chr>
    ## 1     1 x1    y1   
    ## 2     2 x2    y2   
    ## 3     4 <NA>  y3

-   **full\_join()** keeps all observations in x and y

``` r
full_join(tab_x,tab_y)
```

    ## Joining, by = "key"

    ## # A tibble: 4 x 3
    ##     key val_x val_y
    ##   <dbl> <chr> <chr>
    ## 1     1 x1    y1   
    ## 2     2 x2    y2   
    ## 3     3 x3    <NA> 
    ## 4     4 <NA>  y3

-   **semi\_join()** (filtering join) keeps all observations in x that have a match in y

``` r
semi_join(tab_x,tab_y)
```

    ## Joining, by = "key"

    ## # A tibble: 2 x 2
    ##     key val_x
    ##   <dbl> <chr>
    ## 1     1 x1   
    ## 2     2 x2

-   **semi\_join()** (filtering join) drops all observations in x that have a match in y

``` r
anti_join(tab_x,tab_y)
```

    ## Joining, by = "key"

    ## # A tibble: 1 x 2
    ##     key val_x
    ##   <dbl> <chr>
    ## 1     3 x3
