Lecture 6 (dplyr) - Summary
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
The dplyr package is a key part of the tidyverse in R, and provides a number of useful functions to process rectangular data in R. The main functions are the "five verbs", which are filter(), arrange(), select(), mutate() and summarise().

-   **filter()** allows you to pick observations by their values, effectively filtering the available data set into a subset of rows that match certain conditions. We show the tibble mpg (contained in ggplot2), and then performa a filter operation on the model column (model=="a4")

``` r
library(ggplot2)
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
mpg
```

    ## # A tibble: 234 x 11
    ##    manufacturer model displ  year   cyl trans drv     cty   hwy fl    cla…
    ##    <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <ch>
    ##  1 audi         a4      1.8  1999     4 auto… f        18    29 p     com…
    ##  2 audi         a4      1.8  1999     4 manu… f        21    29 p     com…
    ##  3 audi         a4      2    2008     4 manu… f        20    31 p     com…
    ##  4 audi         a4      2    2008     4 auto… f        21    30 p     com…
    ##  5 audi         a4      2.8  1999     6 auto… f        16    26 p     com…
    ##  6 audi         a4      2.8  1999     6 manu… f        18    26 p     com…
    ##  7 audi         a4      3.1  2008     6 auto… f        18    27 p     com…
    ##  8 audi         a4 q…   1.8  1999     4 manu… 4        18    26 p     com…
    ##  9 audi         a4 q…   1.8  1999     4 auto… 4        16    25 p     com…
    ## 10 audi         a4 q…   2    2008     4 manu… 4        20    28 p     com…
    ## # ... with 224 more rows

``` r
filter(mpg,model=="a4")
```

    ## # A tibble: 7 x 11
    ##   manufacturer model displ  year   cyl trans drv     cty   hwy fl    class
    ##   <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <chr>
    ## 1 audi         a4      1.8  1999     4 auto… f        18    29 p     comp…
    ## 2 audi         a4      1.8  1999     4 manu… f        21    29 p     comp…
    ## 3 audi         a4      2    2008     4 manu… f        20    31 p     comp…
    ## 4 audi         a4      2    2008     4 auto… f        21    30 p     comp…
    ## 5 audi         a4      2.8  1999     6 auto… f        16    26 p     comp…
    ## 6 audi         a4      2.8  1999     6 manu… f        18    26 p     comp…
    ## 7 audi         a4      3.1  2008     6 auto… f        18    27 p     comp…

-   **arrange()** facilitates sorting of data based on a specified column, or number of columns. The default is ascending, and the function **desc()** can be used to sort in ascending order

``` r
arrange(mpg,cty)
```

    ## # A tibble: 234 x 11
    ##    manufacturer model displ  year   cyl trans drv     cty   hwy fl    cla…
    ##    <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <ch>
    ##  1 dodge        dako…   4.7  2008     8 auto… 4         9    12 e     pic…
    ##  2 dodge        dura…   4.7  2008     8 auto… 4         9    12 e     suv 
    ##  3 dodge        ram …   4.7  2008     8 auto… 4         9    12 e     pic…
    ##  4 dodge        ram …   4.7  2008     8 manu… 4         9    12 e     pic…
    ##  5 jeep         gran…   4.7  2008     8 auto… 4         9    12 e     suv 
    ##  6 chevrolet    c150…   5.3  2008     8 auto… r        11    15 e     suv 
    ##  7 chevrolet    k150…   5.3  2008     8 auto… 4        11    14 e     suv 
    ##  8 chevrolet    k150…   5.7  1999     8 auto… 4        11    15 r     suv 
    ##  9 dodge        cara…   3.3  2008     6 auto… f        11    17 e     min…
    ## 10 dodge        dako…   5.2  1999     8 manu… 4        11    17 r     pic…
    ## # ... with 224 more rows

``` r
arrange(mpg,desc(cty))
```

    ## # A tibble: 234 x 11
    ##    manufacturer model displ  year   cyl trans drv     cty   hwy fl    cla…
    ##    <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <ch>
    ##  1 volkswagen   new …   1.9  1999     4 manu… f        35    44 d     sub…
    ##  2 volkswagen   jetta   1.9  1999     4 manu… f        33    44 d     com…
    ##  3 volkswagen   new …   1.9  1999     4 auto… f        29    41 d     sub…
    ##  4 honda        civic   1.6  1999     4 manu… f        28    33 r     sub…
    ##  5 toyota       coro…   1.8  2008     4 manu… f        28    37 r     com…
    ##  6 honda        civic   1.8  2008     4 manu… f        26    34 r     sub…
    ##  7 toyota       coro…   1.8  1999     4 manu… f        26    35 r     com…
    ##  8 toyota       coro…   1.8  2008     4 auto… f        26    35 r     com…
    ##  9 honda        civic   1.6  1999     4 manu… f        25    32 r     sub…
    ## 10 honda        civic   1.8  2008     4 auto… f        25    36 r     sub…
    ## # ... with 224 more rows

-   **arrange()** can also process multiple columns.

``` r
arrange(mpg,desc(cty),desc(hwy))
```

    ## # A tibble: 234 x 11
    ##    manufacturer model displ  year   cyl trans drv     cty   hwy fl    cla…
    ##    <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <ch>
    ##  1 volkswagen   new …   1.9  1999     4 manu… f        35    44 d     sub…
    ##  2 volkswagen   jetta   1.9  1999     4 manu… f        33    44 d     com…
    ##  3 volkswagen   new …   1.9  1999     4 auto… f        29    41 d     sub…
    ##  4 toyota       coro…   1.8  2008     4 manu… f        28    37 r     com…
    ##  5 honda        civic   1.6  1999     4 manu… f        28    33 r     sub…
    ##  6 toyota       coro…   1.8  1999     4 manu… f        26    35 r     com…
    ##  7 toyota       coro…   1.8  2008     4 auto… f        26    35 r     com…
    ##  8 honda        civic   1.8  2008     4 manu… f        26    34 r     sub…
    ##  9 honda        civic   1.8  2008     4 auto… f        25    36 r     sub…
    ## 10 honda        civic   1.6  1999     4 manu… f        25    32 r     sub…
    ## # ... with 224 more rows

-   **select()** is used to reduce the number of columns in the tibble

``` r
select(mpg,manufacturer,model,year,cty,hwy)
```

    ## # A tibble: 234 x 5
    ##    manufacturer model       year   cty   hwy
    ##    <chr>        <chr>      <int> <int> <int>
    ##  1 audi         a4          1999    18    29
    ##  2 audi         a4          1999    21    29
    ##  3 audi         a4          2008    20    31
    ##  4 audi         a4          2008    21    30
    ##  5 audi         a4          1999    16    26
    ##  6 audi         a4          1999    18    26
    ##  7 audi         a4          2008    18    27
    ##  8 audi         a4 quattro  1999    18    26
    ##  9 audi         a4 quattro  1999    16    25
    ## 10 audi         a4 quattro  2008    20    28
    ## # ... with 224 more rows

-   **select()** is used to reduce the number of columns in the tibble

``` r
select(mpg,manufacturer,model,year,cty,hwy)
```

    ## # A tibble: 234 x 5
    ##    manufacturer model       year   cty   hwy
    ##    <chr>        <chr>      <int> <int> <int>
    ##  1 audi         a4          1999    18    29
    ##  2 audi         a4          1999    21    29
    ##  3 audi         a4          2008    20    31
    ##  4 audi         a4          2008    21    30
    ##  5 audi         a4          1999    16    26
    ##  6 audi         a4          1999    18    26
    ##  7 audi         a4          2008    18    27
    ##  8 audi         a4 quattro  1999    18    26
    ##  9 audi         a4 quattro  1999    16    25
    ## 10 audi         a4 quattro  2008    20    28
    ## # ... with 224 more rows

-   **select()** can work with a number of functions, for example ends\_with() and contains()

``` r
select(mpg,ends_with("r"))
```

    ## # A tibble: 234 x 2
    ##    manufacturer  year
    ##    <chr>        <int>
    ##  1 audi          1999
    ##  2 audi          1999
    ##  3 audi          2008
    ##  4 audi          2008
    ##  5 audi          1999
    ##  6 audi          1999
    ##  7 audi          2008
    ##  8 audi          1999
    ##  9 audi          1999
    ## 10 audi          2008
    ## # ... with 224 more rows

``` r
select(mpg,contains("l"))
```

    ## # A tibble: 234 x 5
    ##    model      displ   cyl fl    class  
    ##    <chr>      <dbl> <int> <chr> <chr>  
    ##  1 a4           1.8     4 p     compact
    ##  2 a4           1.8     4 p     compact
    ##  3 a4           2       4 p     compact
    ##  4 a4           2       4 p     compact
    ##  5 a4           2.8     6 p     compact
    ##  6 a4           2.8     6 p     compact
    ##  7 a4           3.1     6 p     compact
    ##  8 a4 quattro   1.8     4 p     compact
    ##  9 a4 quattro   1.8     4 p     compact
    ## 10 a4 quattro   2       4 p     compact
    ## # ... with 224 more rows

-   **mutate()** creates new variables with functions of existing variables

``` r
t <- mutate(mpg,CityHwayRatio=cty/hwy)
select(t,manufacturer,model, year, cty,hwy, CityHwayRatio)
```

    ## # A tibble: 234 x 6
    ##    manufacturer model       year   cty   hwy CityHwayRatio
    ##    <chr>        <chr>      <int> <int> <int>         <dbl>
    ##  1 audi         a4          1999    18    29         0.621
    ##  2 audi         a4          1999    21    29         0.724
    ##  3 audi         a4          2008    20    31         0.645
    ##  4 audi         a4          2008    21    30         0.7  
    ##  5 audi         a4          1999    16    26         0.615
    ##  6 audi         a4          1999    18    26         0.692
    ##  7 audi         a4          2008    18    27         0.667
    ##  8 audi         a4 quattro  1999    18    26         0.692
    ##  9 audi         a4 quattro  1999    16    25         0.64 
    ## 10 audi         a4 quattro  2008    20    28         0.714
    ## # ... with 224 more rows

-   **summarise()** can collapse many values down to a single summary, using the function group\_by()

``` r
gr <- group_by(mpg,manufacturer)
summarise(gr,MinYear=min(year),MaxYear=max(year),AvrCity=mean(cty),AvrHwy=mean(hwy))
```

    ## # A tibble: 15 x 5
    ##    manufacturer MinYear MaxYear AvrCity AvrHwy
    ##    <chr>          <dbl>   <dbl>   <dbl>  <dbl>
    ##  1 audi            1999    2008    17.6   26.4
    ##  2 chevrolet       1999    2008    15     21.9
    ##  3 dodge           1999    2008    13.1   17.9
    ##  4 ford            1999    2008    14     19.4
    ##  5 honda           1999    2008    24.4   32.6
    ##  6 hyundai         1999    2008    18.6   26.9
    ##  7 jeep            1999    2008    13.5   17.6
    ##  8 land rover      1999    2008    11.5   16.5
    ##  9 lincoln         1999    2008    11.3   17  
    ## 10 mercury         1999    2008    13.2   18  
    ## 11 nissan          1999    2008    18.1   24.6
    ## 12 pontiac         1999    2008    17     26.4
    ## 13 subaru          1999    2008    19.3   25.6
    ## 14 toyota          1999    2008    18.5   24.9
    ## 15 volkswagen      1999    2008    20.9   29.2

-   **pull()** will return a column as a vector. By default, it returns the last column, otherwise the column number/name can be specified

``` r
t <- filter(mpg,model=="a4")
t
```

    ## # A tibble: 7 x 11
    ##   manufacturer model displ  year   cyl trans drv     cty   hwy fl    class
    ##   <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <chr>
    ## 1 audi         a4      1.8  1999     4 auto… f        18    29 p     comp…
    ## 2 audi         a4      1.8  1999     4 manu… f        21    29 p     comp…
    ## 3 audi         a4      2    2008     4 manu… f        20    31 p     comp…
    ## 4 audi         a4      2    2008     4 auto… f        21    30 p     comp…
    ## 5 audi         a4      2.8  1999     6 auto… f        16    26 p     comp…
    ## 6 audi         a4      2.8  1999     6 manu… f        18    26 p     comp…
    ## 7 audi         a4      3.1  2008     6 auto… f        18    27 p     comp…

``` r
pull(t,1)
```

    ## [1] "audi" "audi" "audi" "audi" "audi" "audi" "audi"

-   **case\_when()** can perform a sequence of if-else commands, and can be used with mutate()

``` r
t <- mutate(mpg,CarType=case_when(
    displ < 2.4 ~ "Small",
    displ < 4.6 ~ "Medium",
    TRUE        ~ "Large"
))
arrange(t,desc(displ))
```

    ## # A tibble: 234 x 12
    ##    manufacturer model displ  year   cyl trans drv     cty   hwy fl    class
    ##    <chr>        <chr> <dbl> <int> <int> <chr> <chr> <int> <int> <chr> <chr>
    ##  1 chevrolet    corv…   7    2008     8 manu… r        15    24 p     2sea…
    ##  2 chevrolet    k150…   6.5  1999     8 auto… 4        14    17 d     suv  
    ##  3 chevrolet    corv…   6.2  2008     8 manu… r        16    26 p     2sea…
    ##  4 chevrolet    corv…   6.2  2008     8 auto… r        15    25 p     2sea…
    ##  5 jeep         gran…   6.1  2008     8 auto… 4        11    14 p     suv  
    ##  6 chevrolet    c150…   6    2008     8 auto… r        12    17 r     suv  
    ##  7 dodge        dura…   5.9  1999     8 auto… 4        11    15 r     suv  
    ##  8 dodge        ram …   5.9  1999     8 auto… 4        11    15 r     pick…
    ##  9 chevrolet    c150…   5.7  1999     8 auto… r        13    17 r     suv  
    ## 10 chevrolet    corv…   5.7  1999     8 manu… r        16    26 p     2sea…
    ## # ... with 224 more rows, and 1 more variable: CarType <chr>

-   The **%&gt;% (pipe operator)** can be used to create a workflow of chained operations.

``` r
mpg %>% group_by(manufacturer) %>%
summarise(MinYear=min(year),
          MaxYear=max(year),
          AvrCity=mean(cty),
          AvrHwy=mean(hwy))
```

    ## # A tibble: 15 x 5
    ##    manufacturer MinYear MaxYear AvrCity AvrHwy
    ##    <chr>          <dbl>   <dbl>   <dbl>  <dbl>
    ##  1 audi            1999    2008    17.6   26.4
    ##  2 chevrolet       1999    2008    15     21.9
    ##  3 dodge           1999    2008    13.1   17.9
    ##  4 ford            1999    2008    14     19.4
    ##  5 honda           1999    2008    24.4   32.6
    ##  6 hyundai         1999    2008    18.6   26.9
    ##  7 jeep            1999    2008    13.5   17.6
    ##  8 land rover      1999    2008    11.5   16.5
    ##  9 lincoln         1999    2008    11.3   17  
    ## 10 mercury         1999    2008    13.2   18  
    ## 11 nissan          1999    2008    18.1   24.6
    ## 12 pontiac         1999    2008    17     26.4
    ## 13 subaru          1999    2008    19.3   25.6
    ## 14 toyota          1999    2008    18.5   24.9
    ## 15 volkswagen      1999    2008    20.9   29.2
