#' Tourist arrivals to Sri Lanka by purpose of visit
#'
#' @description Tourist arrivals to Sri Lanka by purpose of visit.
#' There was a civil war in the country from July 1983 to May 2009.
#' Sri Lanka Easter bombings happened on 21 April 2019. From 2011 to 2019, data cover
#' the entire island.
#' On 26 December 2004, Sri Lanka became a victim of the Indian Ocean Tsunami.
#' @format Time series of class tsibble
#' \describe{
#' \item{Year}{Year}
#' \item{Purpose}{Purpose of visit}
#' \item{Arrivals}{Tourist arrivals}
#'}
#'
#' @source Annual Statistical Reports, Sri Lanka Tourism Development Authority
#'
#' @author Priyanga Dilini Talagala
#'
#' @examples
#' library(fable)
#' library(ggplot2)
#' head(touristsl_purpose)
#' autoplot(touristsl_purpose) +
#' geom_point(aes(shape= Purpose)) +
#' scale_shape_manual(values = 1:11)
#'
"touristsl_purpose"

