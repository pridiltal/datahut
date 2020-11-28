## Code to prepare `touristSL`
## The dataset was extracted from Sri Lanka Annual Statistical Reports.
## Sri Lanka Annual Statistical Reports can be found at
## https://www.sltda.gov.lk/annual-statistical-report
library(tidyverse)
library(tsibble)

# Read Data. touristSL.csv contains tourist arrivals to
# Sri Lanka from 1970 to 2018
tourist_sl<-read.csv(here::here("data-raw", "touristSL.csv"),header = TRUE)
tourist_sl <- tourist_sl %>% as_tsibble(index = Year)
# Save data as ALASKA_Caribou_all
usethis::use_data(tourist_sl, overwrite = TRUE)
