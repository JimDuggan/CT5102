library(dplyr)

tx <- tibble(key=c(1,2,3),
                val_x=c("x1","x2","x3"))

ty <- tibble(key=c(1,2,4),
                val_y=c("y1","y2","y3"))

full_join(tx,ty)


