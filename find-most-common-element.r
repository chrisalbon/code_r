# Finding the most common element
# Original source: http://www.unc.edu/~jasperlm/Rsnippets.html

# Create a list of wars
wars <- c("Spanish Civil War", "Spanish Civil War", "Spanish Civil War", "Spanish Civil War", "WWII", "WWII")

# Create a function that finds the most common element in an object
most.common <- function(x) {
  count <- sapply(unique(x), function(i) sum(x==i, na.rm=TRUE))
  unique(x)[which(count==max(count))]
}

# Run the function on the list of wars
most.common(wars)