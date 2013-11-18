# Plotting Hurricanes
# original source: https://github.com/PirateGrunt/Hurricane/blob/master/Analysis/SCAnalysis.md

# load the maps package
library(maps)

# view a map of the US states
map("state")

# set the working directory to the one where our data is stored
setwd("/Users/chrisralbon/cra/cra_projects/code_r/data")

# read in our data in csv
df = read.csv("Hurricanes.csv")

# create a variable that contains all the rows relating to Katrina
dfKatrina <- df[df$Name == "KATRINA", ]

# because names are recycled, only take the rows that happened in the more recent (max year) Katrina
dfKatrina <- dfKatrina[dfKatrina$Year == max(dfKatrina$Year), ]

# plot katrina's longitude and latitude in red
points(dfKatrina$Longitude, dfKatrina$Latitude, pch = 19, col = "red")

# create a variable that contains all the rows relating to Hugo
dfHugo <- df[df$Name == "HUGO", ]

# because names are recycled, only take the rows that happened in the more recent (max year) Hugo
dfHugo <- dfHugo[dfHugo$Year == max(dfHugo$Year), ]

# plot Hugo's longitude and latitude in red
points(dfHugo$Longitude, dfHugo$Latitude, pch = 19, col = "blue")

# create a variable that contains all the rows relating to Donna
dfDonna <- df[df$Name == "DONNA", ]

# because names are recycled, only take the rows that happened in the more recent (max year) Donna
dfDonna <- dfDonna[dfDonna$Year == max(dfDonna$Year), ]

# plot Donna's longitude and latitude in red
points(dfDonna$Longitude, dfDonna$Latitude, pch = 19, col = "green")

# load the sp package
library(sp)

# load the ggplot2 package
library(ggplot2)

# convert the map data into a dataframe that we can manipulate
myMapData = map_data("state")

# create a new variable, sc, that maps the region called "south carolina"
sc <- myMapData[myMapData$region == "south carolina", ]

# mark nay point oh Hugo's path that is in sc
inSC <- point.in.polygon(dfHugo$Longitude, dfHugo$Latitude, sc$long, sc$lat)

# map the US
map("state")

# mark a point as red if in South Carolina, otherwise make it black
colHugo <- ifelse(inSC == 1, "red", "black")

# plot the points
points(dfHugo$Longitude, dfHugo$Latitude, pch = 19, col = colHugo)
