# Summarize A Variable

# Create two variables of 50 observations
percent.sms <- runif(50)
location <- state.name

# Create a dataframe of those two variables
usa <- data.frame(location, percent.sms)

# Summarize the dataframe
summary(usa)

# View the top few rows of the dataframe
head(usa)

# View the structure of the dataframe
str(usa)

# View the attributes of the dataframe
attributes(usa)

# View the dataframe
View(usa)