# Cleaing Up OKF's Dirty London Transport Data

# load the stringr package
library(stringr)

# load the csv file into R
lon.df <- read.csv("http://data.london.gov.uk/datafiles/transport/tfl_passengers.csv", header=TRUE)

# view the top few lines of the dataset
head(lon.df)

# view the bottom few lines of the dataset
tail(lon.df)

# look at the structure of the dataset, take careful note of the class of the columns
str(lon.df)

# remove the empty rows at the bottom
lon.df <- lon.df[1:96,]

# rename the unnamed first column "date.raw"
names(lon.df)[1]<-"date.raw"

# rename "Millions.LU.journeys.adjusted.for.odd.days" column "lu.trips"
names(lon.df)[2] <- "lu.trips"

# convert lu.trips units
lon.df$lu.trips <- lon.df$lu.trips * 1000000

# rename "Millions.Bus.journeys.adjusted.for.odd.days" column "bus.trips"
names(lon.df)[3] <- "bus.trips"

# convert bus.trip units
lon.df$bus.trips <- lon.df$bus.trips * 1000000

# rename "Millions.bus.plus.underground.journeys.adjusted.for.odd.days...new.measure" column "all.trips"
names(lon.df)[4] <- "all.trips"

# convert all.trip units
lon.df$all.trips <- lon.df$all.trips * 1000000

# rename "LU.Average" column "lu.avg"
names(lon.df)[5] <- "lu.avg"

# convert lu.avg units
lon.df$lu.avg <- lon.df$lu.avg * 1000000

# rename "Bus.Average" column "bus.avg"
names(lon.df)[6] <- "bus.avg"

# convert lu.avg units
lon.df$bus.avg <- lon.df$bus.avg * 1000000

# rename "LU.plus.bus.average" column "all.avg"
names(lon.df)[7] <- "all.avg"

# convert lu.avg units
lon.df$all.avg <- lon.df$all.avg * 1000000

# rename "LU.Growth" column "lu.change"
names(lon.df)[8] <- "lu.change"

# convert lu.change to a character string
lon.df$lu.change <- as.character(lon.df$lu.change)

# replace any "%" with nothing
lon.df$lu.change <- str_replace(lon.df$lu.change, "%", "")

# convert lu.change to numeric and change to a decimal
lon.df$lu.change <- as.numeric(lon.df$lu.change)/100

# rename "Bus.Growth" column "bus.change"
names(lon.df)[9] <- "bus.change"

# convert bus.change to a character string
lon.df$bus.change <- as.character(lon.df$bus.change)

# replace any "%" with nothing
lon.df$bus.change <- str_replace(lon.df$bus.change, "%", "")

# convert bus.change to numeric and change to a decimal
lon.df$bus.change <- as.numeric(lon.df$bus.change)/100

# rename "LU.plus.bus.growth" column "all.change"
names(lon.df)[10] <- "all.change"

# convert all.change to a character string
lon.df$all.change <- as.character(lon.df$all.change)

# replace any "%" with nothing
lon.df$all.change <- str_replace(lon.df$all.change, "%", "")

# convert bus.change to numeric and change to a decimal
lon.df$all.change <- as.numeric(lon.df$all.change)/100

# rename "LU.moving.average.annual.growth" column "lu.avg.change"
names(lon.df)[11] <- "lu.avg.change"

# convert lu.avg.change to a character string
lon.df$lu.avg.change <- as.character(lon.df$lu.avg.change)

# replace any "%" with nothing
lon.df$lu.avg.change <- str_replace(lon.df$lu.avg.change, "%", "")

# convert bus.change to numeric and change to a decimal
lon.df$lu.avg.change <- as.numeric(lon.df$lu.avg.change)/100

# rename "Bus.moving.average.annual.growth" column "bus.avg.change"
names(lon.df)[12] <- "bus.avg.change"

# convert bus.avg.change to a character string
lon.df$bus.avg.change <- as.character(lon.df$bus.avg.change)

# replace any "%" with nothing
lon.df$bus.avg.change <- str_replace(lon.df$bus.avg.change, "%", "")

# convert bus.change to numeric and change to a decimal
lon.df$bus.avg.change <- as.numeric(lon.df$bus.avg.change)/100

# rename "LU.plus.busmoving.average.annual.growth" column "all.avg.change"
names(lon.df)[13] <- "all.avg.change"

# convert bus.change to a character string
lon.df$all.avg.change <- as.character(lon.df$all.avg.change)

# replace any "%" with nothing
lon.df$all.avg.change <- str_replace(lon.df$all.avg.change, "%", "")

# convert all.avg.change to numeric and change to a decimal
lon.df$all.avg.change <- as.numeric(lon.df$all.avg.change)/100

# drop the empty columns at the end of the data frame
lon.df <- lon.df[,c(-14, -15, -16, -17, -18, -19, -20, -21)]

# now to deal with the time period issue

# create a variable that corresponds to the start of TFL's year
start.date <- as.Date("2006-04-01")

# create some event far into the future
end.date <- as.Date("2020-01-01")

# create an element for every year between two dates
date.guess <- seq(start.date, end.date, by = "4 weeks")

# take the first 96 dates (since there are 96 observations in lon.df)
date.guess <- date.guess[1:96]

# add time.period.possible to the lon.df data frame
lon.df <- cbind(date.guess, lon.df)
