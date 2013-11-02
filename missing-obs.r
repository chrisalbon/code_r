# Removing Missing Observations

# Create some data with missing observations
ages <- c(3, 4, 9, NA, 93, 2, NA, NA, 2, 0, 2, 9)

# Create a new variable that is a subset that doesn't include the missing observations
ages.no.na <- subset(ages, !is.na(ages))