# Sampling in R

# Create a population of data
population <- rnorm(1000)

# Sample 100 observation from the population of data, without replacement
sample <- sample(population, 100, replace = FALSE)

# View the sample
sample