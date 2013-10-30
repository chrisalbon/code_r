# Random Numbers

# Generate 3000 random numbers between 0 and 1
runif(3000)

# Generate 3000 random numbers between 5 and 1-
runif(3000, 5, 10)

# Generate 3000 random integers between 1 and 10, with replacement
sample(1:10, 3000, replace=T)

# Select 3 random integers from a pool of 100 integers that range between 1 and 100
sample(1:100, 6, replace=F)

# Select three state names witout replacement
sample(state.name, 3)