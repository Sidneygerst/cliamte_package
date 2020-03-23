#' Average Percipitation 1995-2015
#'
#' This is a function that determines the wet and dry year between 1995 and 2015
#' @param rain_data is from data within this package that has the average rainfall between 1995-2015
#' @example calc_rain(rain_data)
#' @author Sidney
#' @return rain_matrix (max and min rain years and their average)

calc_rain <- function(rain_data){

  library(tidyverse)
  #find the max and min precipitation
  min_rain = min(rain_data$avg_precip)
  dry_year = rain_data %>%
    filter(avg_precip == min_rain) %>%
    select(year) %>%
    as.numeric()

  max_rain = max(rain_data$avg_precip)
  wet_year = rain_data %>%
    filter(avg_precip == max_rain) %>%
    select(year) %>%
    as.numeric()

  rain_matrix <- matrix(c(dry_year, min_rain, wet_year, max_rain),
                        nrow = 2,
                        ncol = 2,
                        byrow = TRUE,
                        dimnames = list(c("Min", "Max"), c("Year", "Average RF")))

  return(rain_matrix)

}



