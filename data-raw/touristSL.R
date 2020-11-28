## Code to prepare `tourist_sl`
## The dataset was extracted from Sri Lanka Annual Statistical Reports.
## Sri Lanka Annual Statistical Reports can be found at
## https://www.sltda.gov.lk/annual-statistical-report
library(tidyverse)
library(tsibble)

# Read Data. touristSL.csv contains tourist arrivals to Sri Lanka
touristsl<-read.csv(here::here("data-raw", "touristSL.csv"),header = TRUE)
touristsl <- touristsl %>% as_tsibble(index = Year)

# Save data as touristsl
usethis::use_data(touristsl, overwrite = TRUE)
