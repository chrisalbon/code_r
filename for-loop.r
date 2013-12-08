# For Loops
# original source: the r book

# create a dataframe with simulated values
x <- runif(1000)
y <- runif(1000)
z <- runif(1000)
a <- runif(1000)
data <- data.frame(x, y, z, a)
rm(x, y, z, a)

# create a variable to place the results of the for loop in
data.altered <- NULL

# for each element in data, square x and put the value in data.altered
for (i in data) {
  data.altered <- data$x^2
}