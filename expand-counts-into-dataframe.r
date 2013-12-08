# Expand A Table Of Counts Into A Dataframe
# Original source: The R Book

# create a dataframe of simulated values
count <- c(2, 3, 4, 1)
sex <- c("male", "female", "male", "female")
nationality <- c("USA", "USA", "UK", "UK")
data.df <- data.frame(count, sex, nationality)
rm(count, sex, nationality)

# apply a function that repeats a row the number of times it appears in data.df$count
data.expand <- lapply(data.df,function(x)rep(x, data.df$count))

# convert it to a data frame
data.expand.df <- as.data.frame(data.expand)

# remove the no-longer-needed count column
data.expand.df <- data.expand.df[,-1]; data.expand.df