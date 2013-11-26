# Select Rows By Logical Test
# original source: the r book

# create a dataframe with simulated values
x <- runif(10)
y <- runif(10)
z <- runif(10)
a <- runif(10)
data <- data.frame(x, y, z, a)
rm(x, y, z, a)

# select all rows where y is greater than x
data[data$y > data$x,]

# select all rows where y IS NOT greater than x
data[!(data$y > data$x),]