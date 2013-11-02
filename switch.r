# Switch Function
# Original source: http://stackoverflow.com/questions/7825501/switch-statement-usage

# The switch function is the same as having a bunch of if statements. It allows R to trigger between different actions based on an input.

# create fake data
y <- runif(10)

# Create a function that switches between different types of averages depending on the input. In this function "type" is input variable that the user enters to select which action is triggered.
avg <- function(x, type) {
  switch(type,
    mean = mean(x),
    median = median(x),
    trimmed = mean(x, trim = .2))
}

# Trigger the function to calculate the mean
avg(y, "mean")

# Trigger the function to calculate the median
avg(y, "median")

# Trigger the function to calculate a trimmed mean
avg(y, "trimmed")
