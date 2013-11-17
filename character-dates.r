# Character Dates

# create a dates2 variable with simulated data
dates2 <- as.data.frame(
  cbind(c(1:5),
  c("8/31/70", "NA", "10/12/60", "1/1/66", "12/31/80"), 
  c("8/31/56", "12-31-1977", "12Aug55", "July 31 1965" ,"30jan1952")))

# add column names
colnames(dates2) <- c("ID", "date_factor", "date_horrible")

# view the dataframe
dates2

# load the chron packaage
library(chron)

# convert date_factor into characters and the translate it into date format using format = 
dates2$date.fmt <- chron(as.character(dates2$date_factor), format = "m/d/y")

# same as above but change the output format
dates2$date.fmt <- chron(as.character(dates2$date_factor), format = "m/d/y", out.format = "month day year")

# create a new variable that is their age in years (thus divide by 360), the floor() function converts the number into integers
dates2$age <- as.numeric(floor(difftime(chron("03/01/2013"), dates2$date.fmt, unit = "days")/360))

# Add a day to each element of a vector of ages
dates2$date.fmt + 1

# Ask which dates in a vector came before a set date
dates2$date.fmt < chron("04/02/62")

# load the date package
library(date)


dates2$date_autofmt <- as.date(as.character(dates2$date_horrible))
dates2[, c(1, 3, 6)]

# take the horribly formatted dates, convert them into characters, auto convert the messy dates into clean dates (using as.date) then convert it into R's date class (as.Date). Notice the capitalization of as.date and as.Date.
dates2$date_amazing <- as.Date(as.date(as.character(dates2$date_horrible)))

dates2[, c(1, 3, 7)]

