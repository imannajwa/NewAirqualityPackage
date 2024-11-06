replace_missing_with_median <- function(data) {
              medians <- find_medians(data)
              for(i in 1:ncol(data)) {
                if(is.numeric(data[[i]])) {
                  data[[i]][is.na(data[[i]])] <- medians[i]
                }
              }
              return(data)
            }
