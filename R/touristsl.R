#' Tourist arrivals to Sri Lanka
#'
#' @description Tourist arrivals to Sri Lanka from 1970 to 2019.
#' There was a civil war in the country from July 1983 to May 2009.
#' Sri Lanka Easter bombings happened on 21 April 2019.
#' On 26 December 2004, Sri Lanka became a victim of the Indian Ocean Tsunami.
#' @format Time series of class tsibble
#' \describe{
#' \item{Year}{Year}
#' \item{Arrivals}{Tourist arrivals}
#'}
#'
#' @source Annual Statistical Reports, Sri Lanka Tourism Development Authority
#'
#' @author Priyanga Dilini Talagala, Claire Kermorvant
#'
#' @examples
#' library(fable)
#' autoplot(touristsl)
"touristsl"
