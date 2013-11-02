# Indexing

# How indexing is formatted:
# variable[ row(s), column(s) ]

# Create a variables of five elements
x <- c(1, 4, 9, 16, 25)
y <- c(1, 4, 4, 36, 24)
m <- data.frame(x, y)

# Select the first, third, and fifth elements
x[c(1,3,5)]

# Select of all EXCEPT the second and fourth elements
x[c(-2, -4)]

# Select of all EXCEPT the second and fourth elements
x[c(TRUE, FALSE, TRUE, FALSE, TRUE)]

# Select the entire first row of a matrix, array, or dataframe
m[1, ]

# Select an the entire first column of a matrix, array, or dataframe
m[, 1]
