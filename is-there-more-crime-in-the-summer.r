# Is There More Crime In The Summer?

# One thing that "feels" true in Baltimore is when the hot, muggy summers come around, crime rates increase and when the cold, dark winters roll up, crime drops. Let's use the crime data to see if that is true.

# Importing Baltimore's 2010 Monthly Crime Data

# create an object called bmore.crime from the csv file called Crime_2010_Count_By_District.csv
bmore.crime <- read.csv("~/cra/cra_projects/code_peoples-data/The People's Data/data_files/Crime_2010_Count_By_District.csv")

# Create a new variable with our crime data information
crimeDate.MMYYYY <- bmore.crime$crimeDate

# However, as it stands R does not understand that the data in crimeDate.MMYYYY is a date. We have to tell R the format of the date so it can "read" it. But, before that, we are faced with a different problem. Currently we know the month and year of the crime, but not the day. R, however, needs to have a day specified. To do this, we will make a little fix: paste in "/15" onto the date string and thus tell R to consider each date to be the 15h day (i.e. the middle) of the month.

# Create a new variable, which adds "/15" onto the end of crimeDate.MMYYYYDD and then tells R to consider that data to be a date.
crimeDate.MMYYYYDD <- as.Date(paste(crimeDate.MMYYYY,"/15",sep=""), "%m/%Y/%d")

#Let's see if it worked. Yes!
head(crimeDate.MMYYYYDD)

# This is a great custom function made by Josh O'Brien that I found on StackOverflow, a Q & A site for programming. I've added some extended comments for your convience.

getSeason <- function(DATES) { # create a function called "getSeason"
  WS <- as.Date("2012-12-15", format = "%Y-%m-%d") # set the start of the Winter Solace (WS) for December 15th
  SE <- as.Date("2012-3-15",  format = "%Y-%m-%d") # set the start of the Spring Equinox (SE) for March 15th 
  SS <- as.Date("2012-6-15",  format = "%Y-%m-%d") # set the start of the Summer Solstice (SS) for June 15th 
  FE <- as.Date("2012-9-15",  format = "%Y-%m-%d") # set the start of the Fall Equinox (FE) for September 15th
  
  d <- as.Date(strftime(DATES, format="2012-%m-%d")) # Convert dates from any year to 2012 dates, just to keep everything consistent
  
  # This is a pretty clever but complicated block of code. Essentially Josh's function is checking to see if a date fits the criteria for being summer or fall, if the date doesn't fit either, the function then checks to see if the date fits the criteria for spring, if the date doesn't fit that criteria either, the function decides if the date is winter.
  ifelse (d >= WS | d < SE, "Winter",
          ifelse (d >= SE & d < SS, "Spring",
                  ifelse (d >= SS & d < FE, "Summer", "Fall")))
}

# apply the getSeason() function to crimeDate.MMYYYYDD and put that information in a new variable called crimeDate.seasons
crimeDate.seasons <- getSeason(crimeDate.MMYYYYDD)

# convert crimeDate.seasons into a factor (i.e. an unordered set of categories)
crimeDate.seasons <- factor(crimeDate.seasons) 

# Okay! We finally have the data ready to be presented. First, let's the total number of crimes, broken down by type and season.

# find the sum of all crimes, broken down by the type of crime and the season that the crime occured.
tapply(bmore.crime$numberCrimes, list(bmore.crime$description, crimeDate.seasons), sum)

# One more analysis that is interesting, let's just look at the total number of crimes per season.

# find the sum of all crimes, broken down by season
crimes.per.season <- tapply(bmore.crime$numberCrimes, crimeDate.seasons, sum); crimes.per.season

# According to the data, our theory that there was more crimes in the summer was somewhat true. In reality, it is not so much that summer has more crimes, but rather than winter has far fewer crimes than any other season — around half in fact.

# We can easily visualize the different with using a bar plot.

# create a bar plot using crimes.per.season with the title of "Number Of Arrests Per Season" and with red bars
barplot(crimes.per.season, main="Total Baltimore Arrests Per Season", col="red")