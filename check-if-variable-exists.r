# Check To See If A Variable Exists
# original source: http://www.r-bloggers.com/check-if-a-variable-exists-in-r/

# create a dataframe with simulated values
x <- runif(1000)
y <- runif(1000)
z <- runif(1000)
a <- runif(1000)
data <- data.frame(x, y, z, a)
rm(x, y, z, a)

# does a variable called "x" exists in the object "data"?
"x" %in% names(data)

# does a column called "x" exists in the object "data"?
"x" %in% colnames(data)

