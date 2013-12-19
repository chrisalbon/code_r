# ACLED Exploration

library(foreign)

df <- read.csv("Kenya.csv", header = TRUE, stringsAsFactors = FALSE)

# load the ggplot2 package
library(ggplot2)

# load the ggmap package
library(ggmap)

# get the map from google maps, centered on the median long/lat. 
mapImageData <- get_googlemap(
  center = c(lon = median(df$LONGITUDE), lat = median(df$LATITUDE)),
  zoom = 7,
  maptype = c("terrain")
)

# plot the points on the map in red (the aes has some problems inheriting from prevois models, so that is why we've FALSE'd the inherit)
p <- ggmap(mapImageData, extent = "device") +
  geom_point(inherit.aes = FALSE, aes(x = df$LONGITUDE, y = df$LATITUDE, colour = df$EVENT_TYPE),
             data = df,
             size = 4,
             pch = 20)