
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

### Tourism in Sri Lanka

**Special events**

  - There was a civil war in the country from July 1983 to May 2009.
  - On 26 December 2004, Sri Lanka became a victim of the Indian Ocean
    Tsunami.
  - Sri Lanka Easter bombings happened on 21 April 2019.

<!-- end list -->

``` r
library(datahut)
## basic example code
library(fable)
#> Loading required package: fabletools
library(ggplot2)
head(touristsl)
#> # A tsibble: 6 x 2 [1Y]
#>    Year Arrivals
#>   <int>    <dbl>
#> 1  1970    46247
#> 2  1971    39654
#> 3  1972    56047
#> 4  1973    77888
#> 5  1974    85011
#> 6  1975   103204
autoplot(touristsl)+
  ggtitle("Tourist arrivals to Sri Lanka from 1970 to 2018")+
  xlab("Year") +
  ylab("Tourist Arrivals")
#> Plot variable not specified, automatically selected `.vars = Arrivals`
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r
head(touristsl_monthly)
#> # A tsibble: 6 x 2 [1M]
#>      Month Arrivals
#>      <mth>    <int>
#> 1 1971 Jan     5931
#> 2 1971 Feb     6570
#> 3 1971 Mar     5166
#> 4 1971 Apr     1539
#> 5 1971 May      952
#> 6 1971 Jun      961
touristsl_monthly%>% autoplot(Arrivals)
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r
touristsl_monthly[433:588,]  %>% autoplot()
#> Plot variable not specified, automatically selected `.vars = Arrivals`
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

``` r
library(feasts)
touristsl_monthly %>%
  feasts::gg_season(Arrivals, labels = "both") +   ylab("Arrivals") +
ggtitle("Seasonal plot: Monthly tourist arrivals to Sri Lanka")
```

<img src="man/figures/README-unnamed-chunk-3-1.png" width="100%" />

``` r
touristsl_monthly %>%
feasts::gg_subseries(Arrivals) + ylab("Arrivals") + ggtitle("Subseries plot: Monthly tourist arrivals to Sri Lanka")
```

<img src="man/figures/README-unnamed-chunk-4-1.png" width="100%" />
