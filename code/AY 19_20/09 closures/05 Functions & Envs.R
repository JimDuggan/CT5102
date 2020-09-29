e <- new.env()

e$f <- function()10

with(e,{e$g <- function()1})

with(e,{h <- function()99})

e$g()

e
environment(e$g)

environment(e$f)

parent.env(environment(e$g))

parent.env(environment(e$f))
