# Data can be split up by levels of a factor (i.e. categories in a nominal variable)

district <- factor(c("NORTH", "NORTHWEST", "CENTRAL", "SOUTH", "SOUTHWEST", "WESTERN"))
number.crimes <- runif(6)
year <- c(2009, 2009, 2009, 2010, 2010, 2009)
crime <- data.frame(year, district, number.crimes)

split(crime, district) # split up the crime data by district

# imagine if you also can crime data for 2009, you can use the combination of split() and sapply() to create a nice 2x2 table

numberCrimes09 <- number.crimes # create 2009 crime data, for this example we are keeping the data the same for both years
crime <- cbind(numberCrimes09, crime) # add a column in bmore.crime for numberCrime09
head(crime) # display the top few rows of bmore.crime to check everything looks good
sapply(split(crime[,c('numberCrimes09','number.crimes')], district), sum) #find the combined sum of the both annual crime total columns, by district
