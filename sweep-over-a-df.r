# Sweep Over An Dataframe
# original source: the r book

# create a dataframe with simulated values
x <- runif(1000)
y <- runif(1000)
z <- runif(1000)
a <- runif(1000)
data <- data.frame(x, y, z, a)
rm(x, y, z, a)

# Add 10 to the first column, 20 to the second column, 30 to the third column, 40 to the fourth column. Columns are denoted with the "2"
sweep(data, 2, c(10, 20, 30, 40), "+")