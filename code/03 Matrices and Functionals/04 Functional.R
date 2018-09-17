# see http://adv-r.had.co.nz/Functionals.html

my_lapply <- function(x, f, ...) {
  out <- vector("list", length(x))
  for (i in seq_along(x)) {
    out[[i]] <- f(x[[i]], ...)
  }
  out
}

l <- list(1:2, 3:4, c(4:10,NA))

my_lapply(l,sum,na.rm=T)
