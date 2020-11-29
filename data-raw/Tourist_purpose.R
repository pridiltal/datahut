## Code to prepare `tourist_purpose`
## The dataset was extracted from Sri Lanka Annual Statistical Reports
## published by the Sri Lanka Tourism Development Authority
## https://www.sltda.gov.lk/annual-statistical-report
library(tidyverse)
library(tsibble)

# Read Data. touristsl_monthly.csv contains tourist arrivals to Sri Lanka by purpose of visit
tourist_purpose<-read.csv(here::here("data-raw", "tourist_by_purpose.csv"),header = TRUE)
touristsl_purpose <- tourist_purpose %>%
  pivot_longer(-Year, names_to = "Purpose", values_to = "Arrivals") %>%
  as_tsibble(index = Year, key = Purpose)

# Save data as touristsl_monthly
usethis::use_data(touristsl_purpose, overwrite = TRUE)
