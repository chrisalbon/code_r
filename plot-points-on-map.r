# Plot Lat/Long Points On A Map

# load the ggplot2 package
library(ggplot2)

# load the ggmap package
library(ggmap)

# load the data points to be plotted
gps <- read.csv("/Users/chrisralbon/cra/cra_projects/code_r/data/earthquakes.csv", header = TRUE)

# get the map from google maps, centered on the median long/lat. 
mapImageData <- get_googlemap(
  center = c(lon = median(gps$LONG), lat = median(gps$LAT)),
  zoom = 9,
  maptype = c("terrain")
)

# plot the points on the map in red (the aes has some problems inheriting from prevois models, so that is why we've FALSE'd the inherit)
ggmap(mapImageData, extent = "device") +
  geom_point(inherit.aes = FALSE, aes(x = gps$LONG, y = gps$LAT),
  data = gps,
  colour = "red",
  size = 1,
  pch = 20
)