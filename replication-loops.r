# Loops With Replicate
# Original source: Learning R

# Replicate applies an action individually to every element of a vector

# Run runif(1) five times
replicate(5, runif(1))

# The below more complicated example, we create a function that first chooses a method of transportation and then based on what method of transport was selection, calculates a travel time based on that method of transport (hence the switch function). rnorm and rlnorm are simply what the example uses to create fake travel time data

time_for_commute <- function() {
  #Choose a mode of transport for the day
  mode_of_transport <- sample(
    c("car", "bus", "train", "bike"),
    size = 1,
    prob = c(0.1, 0.2, 0.3, 0.4)
  )
  #Find the time to travel, depending upon mode of transport
  time <- switch(
    mode_of_transport,
    car   = rlnorm(1, log(30), 0.5),
    bus   = rlnorm(1, log(40), 0.5),
    train = rnorm(1, 30, 10),
    bike  = rnorm(1, 60, 5)
  )
  names(time) <- mode_of_transport
  time
}

# Run the function
time_for_commute()

# Run the function five times
replicate(5, time_for_commute())