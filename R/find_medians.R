find_medians <- function(data) {
              medians <- sapply(data, function(x) if(is.numeric(x)) median(x, na.rm = T) else NA)
              return(medians)
            }
