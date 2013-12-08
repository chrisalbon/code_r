# Remove Duplicate Rows
# original source: the r book

# create a dataframe with simulated values
x <- c(1,2,3,1,2,2)
y <- c(1,6,3,1,2,2)
z <- c(1,2,3,1,2,2)
a <- c(1,5,6,1,2,2)
data <- data.frame(x, y, z, a)
rm(x, y, z, a)

# find all the rows that are the same
duplicates <- data[duplicated(data),];duplicates

# find all the rows that are unique
not.duplicates <- unique(data);not.duplicates