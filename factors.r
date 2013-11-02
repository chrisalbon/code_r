# Factors

# Factors are a variable type used for categorial data.

# Whenever a data frame is created with text strings, R treats it as a factor.

# Create three variables of 50 observations length.
turnout <- runif(50)
state <- state.name
outcome <- c("win", "loss")

# Create a dataframe of those two variables
usa <- data.frame(state, turnout, outcome)

# Is "outcome" a factor? Yes.
class(usa$outcome)

# View the levels (i.e. category names) of the factor
levels(usa$outcome)

# views the number of these levels (i.e. category IDs) of the factor
nlevels(usa$outcome)

# change levels of a factor
levels(usa$outcome) <- c("victory", "defeat")

