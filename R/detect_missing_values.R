detect_missing_values <- function(data) {
             missing_counts <- numeric(ncol(data))
             names(missing_counts) <- colnames(data)

             for(i in 1:ncol(data)){
               missing_counts[i] <- sum(is.na(data[[i]]))
             }

             # Filter out columns with no missing values
             missing_counts <- missing_counts[missing_counts > 0]
             return(missing_counts)
           }
