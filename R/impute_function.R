# Add the first function
use_r("detect_missing_values")
writeLines("detect_missing_values <- function(data) {
             missing_counts <- numeric(ncol(data))
             names(missing_counts) <- colnames(data)

             for(i in 1:ncol(data)){
               missing_counts[i] <- sum(is.na(data[[i]]))
             }

             # Filter out columns with no missing values
             missing_counts <- missing_counts[missing_counts > 0]
             return(missing_counts)
           }", "R/detect_missing_values.R")

# Add the second function
use_r("find_medians")
writeLines("find_medians <- function(data) {
              medians <- sapply(data, function(x) if(is.numeric(x)) median(x, na.rm = T) else NA)
              return(medians)
            }", "R/find_medians.R")

# Add the third function
use_r("replace_missing_with_median")
writeLines("replace_missing_with_median <- function(data) {
              medians <- find_medians(data)
              for(i in 1:ncol(data)) {
                if(is.numeric(data[[i]])) {
                  data[[i]][is.na(data[[i]])] <- medians[i]
                }
              }
              return(data)
            }", "R/replace_missing_with_median.R")






#' Detect Missing Values
#'
#' This function identifies and counts missing values in each column of a dataset.
#' @param data A data frame containing the data to analyze for missing values.
#' @return A named vector with counts of missing values in each column.
#' @export
detect_missing_values <- function(data) {
  # Function code
}

#' Calculate Medians for Numeric Columns
#'
#' This function computes the median for each numeric column in a dataset, ignoring NA values.
#' @param data A data frame with numeric columns to calculate medians.
#' @return A named vector of medians for each numeric column.
#' @export
find_medians <- function(data) {
  # Function code
}

#' Replace Missing Values with Medians
#'
#' This function replaces missing values in each numeric column with the column’s median.
#' @param data A data frame with numeric columns to clean by replacing missing values.
#' @return A data frame with missing values replaced by the median of each column.
#' @export
replace_missing_with_median <- function(data) {
  # Function code
}
