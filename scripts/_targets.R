install.packages("targets")
install.packages("readr")
library(targets)

# 2. Utwórz plik_targets.R w katalogu głównym:

library(targets)
library(readr)
library(dplyr)


tar_option_set(packages = c("readr", "dplyr"))

list(
  tar_target(read, AirPassengers |> as_tibble() |> write_csv(file = "airtravel.csv")),
  tar_target(raw_csv, here::here("data", "airtravel.csv"), format = "file"),
  tar_target(df, read_csv(raw_csv)),
  tar_target(summary_tbl, df %>% summarise(across(where(is.numeric), mean)))
)

