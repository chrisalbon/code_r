# Converting Between Wide And Long Form Data
# Original Source: Learning R

# Load the reshape library
library(reshape2)

# Generate five subjects, each with five measurements
name <- c("Jack", "Jill", "Steve", "Jake", "Bill")
obs1 <- runif(5)
obs2 <- runif(5)
obs3 <- runif(5)
obs4 <- runif(5)
obs5 <- runif(5)

# create a wide form data frame. That is, one row per person, one column per measurement
survey.wide <- data.frame(name, obs1, obs2, obs3, obs4, obs5)

# convert from wide to long. id.vars denotes the variable to make the transition by and measure.vars denotes the variables to flip
survey.long <- melt(survey.wide, id.vars = "name", measure.vars = c("obs1", "obs2", "obs3", "obs4", "obs5"))

# convert long to wide
survey.wide.2 <- dcast(survey.long, name ~ variable)