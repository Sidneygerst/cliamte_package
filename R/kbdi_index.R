#' KBDI
#'
#' This is a function that calcualtes the Keetch-Byram Drought Index. This index can be used in fire preparedness. Low numbers indicate low fire risk, while high numbers indicate high fire risk.
#' @param Temperature The daily temperature (Degrees F)
#' @param Rain The daily rain fall amoung (mm)
#' @param MAP Mean Annual Precipitation (mm)
#' @example kbdi_index(80, 20, 20)
#' @author Sidney
#' @return kbdi
#'


kbdi_index <- function(Temperature, Rain, MAP) {

  kbdi <- 8 * (Temperature * (9.0/5.0) + 32.0) * (((Rain/25)-0.2) * ((MAP/25)))

  return(kbdi)

}
