# Thematic World Map

# load the RColorBrewer and rworldmap packages
library(RColorBrewer)
library(rworldmap)
library(classInt)

# import the country data
data(countryExData)

#getting example data and joining to a map
data("countryExData", package="rworldmap")

# create the map data, specfically merging the data to the map
sPDF <- joinCountryData2Map(countryExData, joinCode = "ISO3", nameJoinColumn = "ISO3V10")

# break the PDF$EPI continous variable (leaving out missing observations) into five equal categories
classInt <- classIntervals(na.omit(sPDF$EPI), n=5, style="equal")

#getting a colour scheme from the RColorBrewer package
colourPalette <- brewer.pal(5,'Reds')

#calling mapCountryData with the parameters from classInt and RColorBrewer
mapParams <- mapCountryData(sPDF, 
                             nameColumnToPlot="EPI", 
                             addLegend=FALSE, 
                             catMethod = classInt$brks, 
                             colourPalette=colourPalette
                            )

# add a custom legend so the break values are displayed
do.call(addMapLegend, c(mapParams,
                        legendLabels="all",
                        legendWidth=0.5,
                        legendIntervals="data"
                        )
        )