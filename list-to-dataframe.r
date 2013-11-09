# Convert A List Into A Dataframe

# create a list of two elements, the first a vector of 20 obs, the second 20 state names
the.list <- list(scores = runif(20), states = state.name[1:20]); the.list

# create a dataframe with identifying each element of the list as a dataframe column 
df <- data.frame(the.list$scores, the.list$states); df
