# Aggregate Data By Week Or Month
# original source: http://stackoverflow.com/questions/19716244/aggregate-data-by-week-month-etc-in-r?lq=1

# load the xts package
library(xts)

# create some simulated data

# create an element for every year between two dates
date <- seq(as.Date("2006-01-01"), as.Date("2007-01-01"), by = "1 day")

# create some simulated values
score <- runif(366)

# create a zoo time series object of score and ata
zoo <- zoo(score, date)

# create a weekly average
weekly.avg <- apply.weekly(zoo, mean)

# create a monthly average
monthly.avg <- apply.monthly(zoo, mean)

