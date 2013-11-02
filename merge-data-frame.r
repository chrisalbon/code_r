# Merge Data Frames

# Create two variables of 50 observations, note that we only use 10 month names, because to be combined into a dataset all variables must have the same number of lengths OR be a multiple of the longest length.
percent.sms.85 <- runif(50)
state <- state.name
month.85 <- month.name[1:10]

# Create a dataframe of those two variables
usa1985 <- data.frame(state, percent.sms.85, month.85)

percent.sms.95 <- runif(50)
state <- state.name
month.95 <- month.name[1:10]

# Create a dataframe of those two variables
usa1995 <- data.frame(state, percent.sms.95, month.95)

# Merge the 1995 and 1985 data frames by the variable "state"
usa <- merge(usa1985, usa1995, by = "state")

# If some observations don't have a match, we can force the merge with the all = TRUE argument

# Drop the last 10 observations in usa1985
usa1985a <- usa1985[1:40,]

# Merge 1985 and 1995 data frames
usa.a <- merge(usa1985a, usa1995, by = "state", all = TRUE)
