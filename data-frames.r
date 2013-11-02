# Data Frames

# Create two variables of 50 observations, note that we only use 10 month names, because to be combined into a dataset all variables must have the same number of lengths OR be a multiple of the longest length.
percent.sms <- runif(50)
state <- state.name
month <- month.name[1:10]

# Create a dataframe of those two variables
usa <- data.frame(state, percent.sms, month)

# Find the number of columns in the data frame
length(usa)

# Select the second and third rows of the first two columns
usa[2:3, -3]

# Select the second and third rows of the first column
usa[[1]][2:3]

# Select the second and third rows of the first column
usa$state[2:3]

# Transpose the data frame
usa.t <- t(usa)

