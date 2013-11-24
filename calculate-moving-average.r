# Calculate A Moving Average
# original source: http://stackoverflow.com/questions/743812/calculating-moving-average-in-r

# create some simulated data
x <- 1:10

library(forecast)

ma(x, order = 5, centre=TRUE)