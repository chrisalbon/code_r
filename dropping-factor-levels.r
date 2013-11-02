# Dropping Factor Levels
# Original Source: Learning R

# Create two variables of 30 observations length with "outcome" being a factor
turnout <- runif(30)
outcome <- c("win", "loss", "draw")

# Create a dataframe of those two variables
election <- data.frame(turnout, outcome)

# What if for some reason we remove draws from consideration

# Create a new variable, which is comprised only of obs where election$outcome is a win or loss
election.no.draws <- election[which(election$outcome=="win" | election$outcome=="loss"),]

# View factor levels
levels(election.no.draws$outcome)

# However, since this is a factor, we still have three factors levels when we should only have two. So we have to drop those extra factors
election.no.draws$outcome <- droplevels(election.no.draws$outcome)

# View factor levels
levels(election.no.draws$outcome)