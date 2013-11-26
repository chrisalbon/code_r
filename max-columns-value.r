# Find Which Column Has The Greatest Value In Each Row
# original source: the r book

# create a dataframe with simulated values
x <- runif(50)
y <- runif(50)
z <- runif(50)
a <- runif(50)
df <- data.frame(x, y, z, a)

# go through each row, and find the column index with the maximum value
max.col(df)


# go through each row, and find the column index with the minimum value
max.col(-df)