# Indexing Tricks
# original source: the r book

# create a dataframe with simulated values
x <- runif(1000)
y <- runif(1000)
z <- runif(1000)
a <- runif(1000)
m <- runif(1000)
i <- runif(1000)
j <- runif(1000)
k <- runif(1000)

data <- data.frame(x, y, z, a, m, i, j, k)

rm(x, y, z, a, m, i, j, k)

# select all of the columns from row 3 of the dataframe
data[3,]

# drop the whole of row 4 from the dataframe
data[-4,]

# select all of the columns from rows 1 to 2 of the dataframe
data[1:2,]

# drop all of the columns from rows 8 to 10 of the dataframe
data[-(8:10),]

# select all of the columns from rows 5, 11, and 12 of the dataframe
data[c(5,11,12),]

# use a logical test (675 > 54) to select all columns from certain rows
data[675 > 54,]
