
<!-- README.md is generated from README.Rmd. Please edit that file -->

# datahut

<!-- badges: start -->

<!-- badges: end -->

`datahut` provides datasets for statistical data analysis.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("pridiltal/datahut")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(datahut)
## basic example code
library(fable)
#> Loading required package: fabletools
library(ggplot2)
autoplot(tourist_sl)+
  ggtitle("Tourist arrivals to Sri Lanka from 1970 to 2018")+
  xlab("Year") +
  ylab("Tourist Arrivals")
#> Plot variable not specified, automatically selected `.vars = Arrivals`
```

<img src="man/figures/README-example-1.png" width="100%" />
