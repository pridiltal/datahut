#' Monthly tourist arrivals to Sri Lanka
#'
#' @description Monthly tourist arrivals to Sri Lanka
#' @format Time series of class tsibble
#' \describe{
#' \item{Month}{Year and Month}
#' \item{Arrivals}{Tourist arrivals}
#'}
#'
#' @source Annual Statistical Reports, Sri Lanka Tourism Development Authority
#'
#' @author Priyanga Dilini Talagala, Claire Kermorvant
#'
#' @examples
#' library(fable)
#' head(touristsl_monthly)
#' touristsl_monthly[433:588,]  %>% autoplot()
"touristsl_monthly"

