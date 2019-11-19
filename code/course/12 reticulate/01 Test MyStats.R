library(reticulate)
Sys.setenv(RETICULATE_PYTHON="/Users/jim/anaconda3/bin/python3")


my_summary <- function(v){
  list(Mean=mean(v),
       SD=sd(v),
       Median=median(v))
}

reticulate::py_config()

mystats <- reticulate::import("mystats")

obs <- rnorm(1000,78,12)

from_python <- mystats$summary(obs)
with_R <- my_summary(obs)

