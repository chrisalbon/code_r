# Drop Residual Factors

# create the problem

# create a dataframe with a factor variable (state names)
df <- data.frame(states = state.name[1:5], score=seq(1:5))

# drop two of the observations
subdf <- subset(df, score <= 3)

# however, all the factors remain
levels(subdf$states)

# the solution

# run factor() to remake the factors correctly
subdf$states <- factor(subdf$states)

# check to see it is correct
levels(subdf$states)
