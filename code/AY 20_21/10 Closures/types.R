library(sloop)
library(aimsir17)

typeof(1:10)
sloop::otype(1:10)

typeof(mtcars)
sloop::otype(mtcars)

typeof(observations)
sloop::otype(mtcars)

class(mtcars)

is.object(1:10)
attr(1:10, "class")

is.object(observations)
attr(observations, "class")
sloop::otype(observations)
