## Code to prepare `unemp_ratesl`
## The dataset was extracted from Central Bank of Sri Lanka, Annual report
## https://www.cbsl.gov.lk/en/publications/economic-and-financial-reports/annual-reports
library(tidyverse)
library(tsibble)

# Read Data. unemployment_rate.csv contains Unemployment Rate of Sri Lanka: Total, Male, Female
unemployment_rate<-read.csv(here::here("data-raw", "unemployment_rate.csv"),header = TRUE)
unemp_ratesl <- unemployment_rate %>%
  as_tsibble(index = Year)

# Save data as touristsl_monthly
usethis::use_data(unemp_ratesl, overwrite = TRUE)
