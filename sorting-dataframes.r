# Sorting Data Frames
# original source: the r book

# create a dataframe with simulated values
x <- runif(1000)
y <- runif(1000)
z <- runif(1000)
a <- runif(1000)
data <- data.frame(x, y, z, a)
rm(x, y, z, a)

# decsending order by x
sorted.by.x <- data[order(data$x),]

# ascending order by x
rev.sorted.by.x <- data[rev(order(data$x)),]

# decsending order by x, then decsending order by y
data[order(data$x,data$y),]