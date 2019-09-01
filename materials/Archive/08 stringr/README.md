Lecture 8 (stringr) - Summary
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
The package **stringr** supports string processing in R. A key idea is the use of regular expressions to search for terms. Text mining is also a fascinating area, and R offers further tools, for example see: [Text Mining with R)](http://tidytextmining.com/index.html), wriiten by Julia Silge and David Robinson.

Useful functions are

-   **str\_detect()**, which determines if a character vector matches a pattern, and returns a logical vector of the same length.

``` r
library(stringr)
x <- c("Apple","Banana","Pear")
str_detect(x,"an")
```

    ## [1] FALSE  TRUE FALSE

``` r
x[str_detect(x,"an")]
```

    ## [1] "Banana"

-   More complex string patterns can be formed using regular expressions
    -   To match **.**, we need to use the escape sequence **\\** before the character **.**

    ``` r
    x <- c("apple.com","Banana","Pear")
    x[str_detect(x,"e\\.com")]
    ```

        ## [1] "apple.com"

    -   Anchors can be used to match from the start (^) of a string, or from the end ($).

    ``` r
    x <- c("Apple","Banana","Pear")
    x[str_detect(x,"^P")]
    ```

        ## [1] "Pear"

    ``` r
    x[str_detect(x,"a$")]
    ```

        ## [1] "Banana"

    -   **\\d** – matches any digit
    -   **\\s** – matches any whitespace
    -   **\[abc\]** – matches a, b or c
    -   **\[^abc\]** – matches anything except a, b or c.

    ``` r
    x <- c("Dublin","Galway","Cork 1","DCDCDCdcdcdc")
    x[str_detect(x,"\\d")]
    ```

        ## [1] "Cork 1"

    ``` r
    x[str_detect(x,"\\s")]
    ```

        ## [1] "Cork 1"

    ``` r
    x[str_detect(x,"[DC]")]
    ```

        ## [1] "Dublin"       "Cork 1"       "DCDCDCdcdcdc"

    -   For repetition, ? for (0 or 1) \* for (0 or more), + for (1 or more)

    ``` r
    x <- c("Italy","Germany","Greece")
    x[str_detect(x,"e?")]
    ```

        ## [1] "Italy"   "Germany" "Greece"

    ``` r
    x[str_detect(x,"e*")]
    ```

        ## [1] "Italy"   "Germany" "Greece"

    ``` r
    x[str_detect(x,"e+")]
    ```

        ## [1] "Germany" "Greece"

    -   {n}: exactly n
    -   {n,}: n or more
    -   {n,m}: between n and m

    ``` r
    x <- c("Italy","Germany","Greece")
    x[str_detect(x,"e{2}")]
    ```

        ## [1] "Greece"

    ``` r
    x[str_detect(x,"e{1,}")]
    ```

        ## [1] "Germany" "Greece"

    ``` r
    x[str_detect(x,"e{2,2}")]
    ```

        ## [1] "Greece"

-   **str\_subset()**, can be used to filter the data set based on a regular expression

``` r
s <- sentences[1:5]
str_subset(s,"Rice|blue")
```

    ## [1] "Glue the sheet to the dark blue background."
    ## [2] "Rice is often served in round bowls."

-   Grouped matches can be used to extract parts of a complex match

``` r
s <- sentences[1:5]
noun <- "(a|the) ([^ ]+)"
str_subset(s,noun)
```

    ## [1] "The birch canoe slid on the smooth planks." 
    ## [2] "Glue the sheet to the dark blue background."
    ## [3] "It's easy to tell the depth of a well."     
    ## [4] "These days a chicken leg is a rare dish."

``` r
str_subset(s,noun) %>% str_extract(noun)
```

    ## [1] "the smooth" "the sheet"  "the depth"  "a chicken"
