# Replacing Data

# create simulated crime data of 20 observations
number.of.crimes <- runif(20)

# replace the 10th and 11th value in number of crimes with 14 and 1, respectively
replace(number.of.crimes, c(10,11), c(14,1))