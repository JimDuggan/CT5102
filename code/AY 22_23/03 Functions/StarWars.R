library(repurrrsive)

target <- "George Lucas"
target_list <- lapply(sw_films,
                      function(x)
                        if(x$director==target) x else NA)
target_list <- target_list[!is.na(target_list)]