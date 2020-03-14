#' Average Temperature 1995-2015
#'
#' This is a function that determines the cold and hot years between 1995 and 2015
#' @param temp_data is from data within this package that has the average temperature between 1995-2015
#' @example calc_temp(temp_data)
#' @author Sidney
#' @return rain_matrix (max and min rain years and their average)

calc_temp <- function(temp_data) {

  library(tidyverse)
  #find the max and min precipitation
  min_temp = min(temp_data$avg_temp)
  cold_year = temp_data %>%
    filter(avg_temp == min_temp) %>%
    select(year) %>%
    as.numeric()

  max_temp = max(temp_data$avg_temp)
  hot_year = temp_data %>%
    filter(avg_temp == max_temp) %>%
    select(year) %>%
    as.numeric()

  temp_matrix <- matrix(c(cold_year, min_temp, hot_year, max_temp),
                        nrow = 2,
                        ncol = 2,
                        byrow = TRUE,
                        dimnames = list(c("Min", "Max"), c("Year", "Average Temp")))



  return(temp_matrix)


}
