# Map A Path
# original source: http://www.mollietaylor.com/2013/02/gps-basemaps-in-r-using-getmap.html

# read the ggmap package
library(ggmap)

# read the data into R
gps <- read.csv("/Users/chrisralbon/cra/cra_projects/code_r/data/elwyn.csv", header = TRUE)

mapImageData <- get_map(location = c(lon = median(gps$Longitude),
                                     lat = median(gps$Latitude)),
                        color = "color",
                        source = "osm",
                        zoom = 17)

pathcolor <- "#F8971F"

ggmap(mapImageData,
      extent = "device", # "panel" keeps in axes, etc.
      ylab = "Latitude",
      xlab = "Longitude",
      legend = "right") +
  
geom_path(aes(x = Longitude, # path outline
              y = Latitude),
              data = gps,
              colour = "black",
              size = 3) +
  
geom_path(aes(x = Longitude, # path
              y = Latitude),
              colour = pathcolor,
              data = gps,
              size = 1.4)