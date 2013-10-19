# Finding the location (the index) of the first instance of values in a vector
# Original source: http://www.unc.edu/~jasperlm/Rsnippets.html

# Create a list of wars
wars <- c("Spanish Civil War", "Spanish Civil War", "Spanish Civil War", "Spanish Civil War", "WWII", "WWII")

# Create a function that finds the index of the first unique value
find.firsts <- function(x) { match(unique(x), x) }

# Run the function on the list of wars
find.firsts(wars)