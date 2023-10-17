library(ggplot2)

# Problem 1
max_displ <- mpg |> 
              subset(displ==max(displ),
                     select=c(manufacturer,
                              model,
                              year,
                              displ,
                              cty,
                              class))

two_seater <- mpg |>
               subset(class=="2seater") |>
               subset(select=c(class,
                               manufacturer,
                               model,
                               displ,
                               year,
                               hwy))

audi6 <- mpg |>
          subset(manufacturer=="audi") |>
          head() |>
          subset(select=c(year,
                          manufacturer,
                          model,
                          displ,
                          cty))

library(aimsir17)

rp1016 <- observations |>
           subset(station == "ROCHES POINT" &
                  month==10 &
                  day==16) |>
           subset(select=c(hour,wdsp,msl,rain))


