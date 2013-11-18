# Using Melt()

# Melt converts a table/matrix/crosstab into a object with a row for each combination

# create some simulated data
data <- data.frame(
  x=c(0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4),
  y=c(0, 0, 0, 3, 1, 1, 1, 2, 2, 1, 4, 4)
  )

# create a new object that "melts" the data so each row is a unique id-variable combination
counts <- melt(table(data[1:2]))
