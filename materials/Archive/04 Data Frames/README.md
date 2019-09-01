Lecture 4 (Data Frames) - Summary
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
Here are some of the key points from the lecture. See also the sample code solutions in the code folder.

-   A data frame stores heterogeneous data, and the package datasets contains good examples (i.e. mtcars - 32 observations of 11 variables)

``` r
str(mtcars)
```

    ## 'data.frame':    32 obs. of  11 variables:
    ##  $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
    ##  $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
    ##  $ disp: num  160 160 108 258 360 ...
    ##  $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
    ##  $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
    ##  $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
    ##  $ qsec: num  16.5 17 18.6 19.4 17 ...
    ##  $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
    ##  $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
    ##  $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
    ##  $ carb: num  4 4 1 1 2 1 4 2 2 4 ...

``` r
head(mtcars)
```

    ##                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4         21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
    ## Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
    ## Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1

-   Matrix notation can be used to access data frames

``` r
mtcars[1:4,]
```

    ##                 mpg cyl disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4      21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag  21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710     22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive 21.4   6  258 110 3.08 3.215 19.44  1  0    3    1

``` r
mtcars[1:10,c("mpg","cyl","disp")]
```

    ##                    mpg cyl  disp
    ## Mazda RX4         21.0   6 160.0
    ## Mazda RX4 Wag     21.0   6 160.0
    ## Datsun 710        22.8   4 108.0
    ## Hornet 4 Drive    21.4   6 258.0
    ## Hornet Sportabout 18.7   8 360.0
    ## Valiant           18.1   6 225.0
    ## Duster 360        14.3   8 360.0
    ## Merc 240D         24.4   4 146.7
    ## Merc 230          22.8   4 140.8
    ## Merc 280          19.2   6 167.6

-   The list $ operator can be used to access column data, and perform conditional operations

``` r
mtcars$mpg
```

    ##  [1] 21.0 21.0 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 17.8 16.4 17.3 15.2
    ## [15] 10.4 10.4 14.7 32.4 30.4 33.9 21.5 15.5 15.2 13.3 19.2 27.3 26.0 30.4
    ## [29] 15.8 19.7 15.0 21.4

``` r
mtcars$mpg > mean(mtcars$mpg)
```

    ##  [1]  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
    ## [12] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE FALSE
    ## [23] FALSE FALSE FALSE  TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE

-   Combining these can be useful for subsetting

``` r
mtcars[mtcars$mpg > mean(mtcars$mpg),]
```

    ##                 mpg cyl  disp  hp drat    wt  qsec vs am gear carb
    ## Mazda RX4      21.0   6 160.0 110 3.90 2.620 16.46  0  1    4    4
    ## Mazda RX4 Wag  21.0   6 160.0 110 3.90 2.875 17.02  0  1    4    4
    ## Datsun 710     22.8   4 108.0  93 3.85 2.320 18.61  1  1    4    1
    ## Hornet 4 Drive 21.4   6 258.0 110 3.08 3.215 19.44  1  0    3    1
    ## Merc 240D      24.4   4 146.7  62 3.69 3.190 20.00  1  0    4    2
    ## Merc 230       22.8   4 140.8  95 3.92 3.150 22.90  1  0    4    2
    ## Fiat 128       32.4   4  78.7  66 4.08 2.200 19.47  1  1    4    1
    ## Honda Civic    30.4   4  75.7  52 4.93 1.615 18.52  1  1    4    2
    ## Toyota Corolla 33.9   4  71.1  65 4.22 1.835 19.90  1  1    4    1
    ## Toyota Corona  21.5   4 120.1  97 3.70 2.465 20.01  1  0    3    1
    ## Fiat X1-9      27.3   4  79.0  66 4.08 1.935 18.90  1  1    4    1
    ## Porsche 914-2  26.0   4 120.3  91 4.43 2.140 16.70  0  1    5    2
    ## Lotus Europa   30.4   4  95.1 113 3.77 1.513 16.90  1  1    5    2
    ## Volvo 142E     21.4   4 121.0 109 4.11 2.780 18.60  1  1    4    2

-   New columns can be easily added to a data frame

``` r
mtcars$kpg <- mtcars$mpg * 8/5
mtcars[1:10,c("mpg","kpg")]
```

    ##                    mpg   kpg
    ## Mazda RX4         21.0 33.60
    ## Mazda RX4 Wag     21.0 33.60
    ## Datsun 710        22.8 36.48
    ## Hornet 4 Drive    21.4 34.24
    ## Hornet Sportabout 18.7 29.92
    ## Valiant           18.1 28.96
    ## Duster 360        14.3 22.88
    ## Merc 240D         24.4 39.04
    ## Merc 230          22.8 36.48
    ## Merc 280          19.2 30.72

-   The apply function can be used to process data frames to get the mean of a column

``` r
apply(mtcars,2,mean)
```

    ##        mpg        cyl       disp         hp       drat         wt 
    ##  20.090625   6.187500 230.721875 146.687500   3.596563   3.217250 
    ##       qsec         vs         am       gear       carb        kpg 
    ##  17.848750   0.437500   0.406250   3.687500   2.812500  32.145000

-   The sapply function can be used to process data frames to get the mean of a column

``` r
sapply(mtcars,mean)
```

    ##        mpg        cyl       disp         hp       drat         wt 
    ##  20.090625   6.187500 230.721875 146.687500   3.596563   3.217250 
    ##       qsec         vs         am       gear       carb        kpg 
    ##  17.848750   0.437500   0.406250   3.687500   2.812500  32.145000

-   The lapply function can be used to process data frames to get the mean of a column

``` r
lapply(mtcars,mean)
```

    ## $mpg
    ## [1] 20.09062
    ## 
    ## $cyl
    ## [1] 6.1875
    ## 
    ## $disp
    ## [1] 230.7219
    ## 
    ## $hp
    ## [1] 146.6875
    ## 
    ## $drat
    ## [1] 3.596563
    ## 
    ## $wt
    ## [1] 3.21725
    ## 
    ## $qsec
    ## [1] 17.84875
    ## 
    ## $vs
    ## [1] 0.4375
    ## 
    ## $am
    ## [1] 0.40625
    ## 
    ## $gear
    ## [1] 3.6875
    ## 
    ## $carb
    ## [1] 2.8125
    ## 
    ## $kpg
    ## [1] 32.145

-   The package nycflights13 contains an excellent data set, this includes over 300,000 individual flight records

``` r
summary(nycflights13::flights)
```

    ##       year          month             day           dep_time   
    ##  Min.   :2013   Min.   : 1.000   Min.   : 1.00   Min.   :   1  
    ##  1st Qu.:2013   1st Qu.: 4.000   1st Qu.: 8.00   1st Qu.: 907  
    ##  Median :2013   Median : 7.000   Median :16.00   Median :1401  
    ##  Mean   :2013   Mean   : 6.549   Mean   :15.71   Mean   :1349  
    ##  3rd Qu.:2013   3rd Qu.:10.000   3rd Qu.:23.00   3rd Qu.:1744  
    ##  Max.   :2013   Max.   :12.000   Max.   :31.00   Max.   :2400  
    ##                                                  NA's   :8255  
    ##  sched_dep_time   dep_delay          arr_time    sched_arr_time
    ##  Min.   : 106   Min.   : -43.00   Min.   :   1   Min.   :   1  
    ##  1st Qu.: 906   1st Qu.:  -5.00   1st Qu.:1104   1st Qu.:1124  
    ##  Median :1359   Median :  -2.00   Median :1535   Median :1556  
    ##  Mean   :1344   Mean   :  12.64   Mean   :1502   Mean   :1536  
    ##  3rd Qu.:1729   3rd Qu.:  11.00   3rd Qu.:1940   3rd Qu.:1945  
    ##  Max.   :2359   Max.   :1301.00   Max.   :2400   Max.   :2359  
    ##                 NA's   :8255      NA's   :8713                 
    ##    arr_delay          carrier              flight       tailnum         
    ##  Min.   : -86.000   Length:336776      Min.   :   1   Length:336776     
    ##  1st Qu.: -17.000   Class :character   1st Qu.: 553   Class :character  
    ##  Median :  -5.000   Mode  :character   Median :1496   Mode  :character  
    ##  Mean   :   6.895                      Mean   :1972                     
    ##  3rd Qu.:  14.000                      3rd Qu.:3465                     
    ##  Max.   :1272.000                      Max.   :8500                     
    ##  NA's   :9430                                                           
    ##     origin              dest              air_time        distance   
    ##  Length:336776      Length:336776      Min.   : 20.0   Min.   :  17  
    ##  Class :character   Class :character   1st Qu.: 82.0   1st Qu.: 502  
    ##  Mode  :character   Mode  :character   Median :129.0   Median : 872  
    ##                                        Mean   :150.7   Mean   :1040  
    ##                                        3rd Qu.:192.0   3rd Qu.:1389  
    ##                                        Max.   :695.0   Max.   :4983  
    ##                                        NA's   :9430                  
    ##       hour           minute        time_hour                  
    ##  Min.   : 1.00   Min.   : 0.00   Min.   :2013-01-01 05:00:00  
    ##  1st Qu.: 9.00   1st Qu.: 8.00   1st Qu.:2013-04-04 13:00:00  
    ##  Median :13.00   Median :29.00   Median :2013-07-03 10:00:00  
    ##  Mean   :13.18   Mean   :26.23   Mean   :2013-07-03 05:22:54  
    ##  3rd Qu.:17.00   3rd Qu.:44.00   3rd Qu.:2013-10-01 07:00:00  
    ##  Max.   :23.00   Max.   :59.00   Max.   :2013-12-31 23:00:00  
    ## 

-   A section of the data is shown here

``` r
n <- sample(nrow(nycflights13::flights),10)
nycflights13::flights[n,c("year",
                          "month",
                          "day",
                          "dep_delay", 
                          "arr_delay", 
                          "origin", 
                          "dest", 
                          "distance")]
```

    ## # A tibble: 10 x 8
    ##     year month   day dep_delay arr_delay origin dest  distance
    ##    <int> <int> <int>     <dbl>     <dbl> <chr>  <chr>    <dbl>
    ##  1  2013     2    17        -6       -17 LGA    RDU        431
    ##  2  2013     7    23        24        13 LGA    DEN       1620
    ##  3  2013     3    26         3         2 EWR    TPA        997
    ##  4  2013     9     1        -3       -22 JFK    CLT        541
    ##  5  2013     8    20        -6       -12 JFK    BQN       1576
    ##  6  2013     7    21        26        20 JFK    LAS       2248
    ##  7  2013     4     5        -1        -2 EWR    LAX       2454
    ##  8  2013    10    19        -8       -21 LGA    DCA        214
    ##  9  2013    11    21        -4       -15 EWR    IAH       1400
    ## 10  2013    11    18        11         2 LGA    MDW        725
