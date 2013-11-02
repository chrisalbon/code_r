# Converting Strings To Logical

# Create a string with Y and N string elements
answers <- c("Y", "Y", "N", "Y", "N")

# write a function that converts "Y" to TRUE and "N" to FALSE
yn_to_logical <- function(x) {
  y <- rep.int(NA, length(x)) 
  y[x == "Y"] <- TRUE
  y[x == "N"] <- FALSE
  y
}

# run the function on the data
yn_to_logical(answers)