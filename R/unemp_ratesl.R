#' Unemployment rate in Sri Lanka
#'
#' @description Unemployment rate in Sri Lanka.
#' From 1990, data based on Quarterly Labour Force Survey (QLFS) of the
#' Department of Census and Statistics (DCS). Data up to 2010 are for household
#' population aged 10 years and above and from 2011
#' onwards are for those aged 15 years and above.
#' There was a civil war in the country from July 1983 to May 2009.
#' From 1990  to  2002 and 2006, 2007, data excluding both
#' Northern and Eastern provinces. In 2003, 2008-2010, data excluding
#' the Northern province. In 2004, data excluding both Mullaitivu
#' and Killinochchi districts. In 2005, QLFS was conducted as a one-off survey
#' in August 2005 and data cover the entire island. In July 2016,
#' the DCS published a re-weighted and revised labour force data series for 2011 onwards.
#' Sri Lanka Easter bombings happened on 21 April 2019. From 2011 to 2019, data cover
#' the entire island.
#' On 26 December 2004, Sri Lanka became a victim of the Indian Ocean Tsunami.
#' @format Time series of class tsibble
#' \describe{
#' \item{Year}{Year}
#' \item{Total}{Total unemployment rate}
#' \item{Male}{Male unemployment rate}
#' \item{Female}{Female unemployment rate}
#'}
#'
#' @source Annual report, Central Bank of Sri Lanka
#'
#' @author Priyanga Dilini Talagala
#'
#' @examples
#' library(fable)
#' unemp_ratesl %>% autoplot(Total)
#'
#' unemp_ratesl %>%
#' dplyr::select(Year, Male, Female) %>%
#' tidyr::pivot_longer(-Year, names_to = "Gender", values_to = "Unemployment_rate") %>%
#' tsibble::as_tsibble(index = Year, key = Gender) %>%
#' autoplot()
#'
"unemp_ratesl"

