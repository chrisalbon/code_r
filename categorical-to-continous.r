# Converting Categorical Variables To Continuous
# Original source: Learning R

# Create some dirty data that because of the mispelling is imported as a character string
dirty <- data.frame(x <- c("1.23", "4..56", "7.89"))

# Convert the elements to numeric
factor_to_numeric <- function(f)
{
  as.numeric(levels(f))[as.integer(f)]  
}

# The data is converted, but the 4..56 is treated as an NA
factor_to_numeric(dirty$x)