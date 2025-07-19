# Odporność na ścieżki systemowe 

# install.packages("here")
library(here)
here("data", "raw", "sales.csv")

# install.packages("fs")
fs::dir_create((fs::path("R", "function")))
