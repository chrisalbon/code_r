# Indexing Lists
# Source: The R Book

# create a list with simulated values
score <- runif(100)
states.df <- data.frame(state1 = state.name[1:10], state2 = state.name[11:20], state3 = state.name[21:30])
name <- letters[1:20]
data.ls <- list(score, states.df, name)
rm(score, states.df, name)

# view the list
data.ls

# select 1st list element
data.ls[[1]]

# select the 1st list element, then select it's 2nd value
data.ls[[1]][2]

# select the 2nd list element, then select it's value in the 3rd row and 1st column
data.ls[[2]][3,1]
