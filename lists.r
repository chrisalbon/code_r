# Lists

# Lists are objects whose elements can be anything, from matrices to functions.

# Create a numeric vector
x <- runif(50)

# Create a character string vector
y <- state.name

# Create a matrix
m <- matrix(c(3, 2, 4, 3), nrow= 2)

# Create a list containing all of the above
l <- list(x, y, m)

# You can name each element in a list
names(l) <- c("percent voted", "state", "vote matrix")