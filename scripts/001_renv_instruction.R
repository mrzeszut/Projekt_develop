sessionInfo()

renv::init()
install.packages("tidymodels")
library(tidymodels)

renv::snapshot(type = "all")


