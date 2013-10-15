# Data can be split up by levels of a factor (i.e. categories in a nominal variable)

split(bmore.crime, bmore.crime$district) # split up the crime data by district

# imagine if you also can crime data for 2009, you can use the combination of split() and sapply() to create a nice 2x2 table

numberCrimes09 <- bmore.crime$numberCrimes # create 2009 crime data, for this example we are keeping the data the same for both years
bmore.crime <- cbind(numberCrimes09, bmore.crime) # add a column in bmore.crime for numberCrime09
head(bmore.crime) # display the top few rows of bmore.crime to check everything looks good
sapply(split(bmore.crime[,c('numberCrimes09','numberCrimes')], bmore.crime$district), sum) #find the combined sum of the both annual crime total columns, by district
