# Ordered Factors

# Generate some fake data about education in 1000 observations
education <- c("some high school", "high school", "college", "masters", "phd")
obs <- sample(education, 1000, replace = TRUE)

# Turn the same into a ordered factor
obs.ordered <- ordered(obs)

