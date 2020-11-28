## Code to prepare `touristsl_monthly`
## The dataset was extracted from Sri Lanka Annual Statistical Reports
## published by the Sri Lanka Tourism Development Authority
## https://www.sltda.gov.lk/annual-statistical-report
library(tidyverse)
library(tsibble)

# Read Data. touristsl_monthly.csv contains tourist monthly arrivals to Sri Lanka
touristsl_monthly<-read.csv(here::here("data-raw", "touristsl_monthly.csv"),header = TRUE)
touristsl_monthly <- touristsl_monthly %>% select(-Total)
touristsl_monthly <- touristsl_monthly %>%
  pivot_longer(-Year, names_to = "Month", values_to = "Arrivals") %>%
  mutate(Month = yearmonth(paste(Year,Month))) %>%
  select(-Year) %>%
  as_tsibble(index = Month)

# Save data as touristsl_monthly
usethis::use_data(touristsl_monthly, overwrite = TRUE)
