library(readxl)
library(ggplot2)

# http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets

orig_list <- data.frame(readxl::read_excel("datasets/Titanic/titanic3_assignment.xls"))
plist     <- orig_list

