# ACLED Exploration

library(foreign)

df <- read.csv("earthquake.csv", header = TRUE, stringsAsFactors = FALSE)

# load the ggplot2 package
library(ggplot2)

# load the ggmap package
library(ggmap)

# get the map from google maps, centered on the median long/lat. 
mapImageData <- get_googlemap(
  center = c(lon = median(df$Longitude), lat = median(df$Latitude)),
  zoom = 4,
  maptype = c("terrain")
)

# plot the points on the map in red (the aes has some problems inheriting from prevois models, so that is why we've FALSE'd the inherit)
ggmap(mapImageData, extent = "device") +
  geom_point(inherit.aes = FALSE, aes(x = df$Longitude, y = df$Latitude),
             data = df,
             color = "red",
             size = df$Magnitude,
             pch = 20)