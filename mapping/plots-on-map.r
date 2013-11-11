# Plot Points On A Map
# Original source: http://stackoverflow.com/questions/11056738/plotting-points-from-a-data-frame-using-openstreetmap

# load the ggmap package
library(ggmap)

# make a data frame with the long/lat of three stores and their names
stores <- data.frame(
  name=c("Commercial","Union","Bedford"),
  longitude=c(-70.25042295455933,-70.26050806045532,-70.27726650238037),
  latitude=c(43.657471302616806,43.65663299041943,43.66091757424481)
)

# create vector with the long/lat with two opposite corner of the map to mark the zoom level. Specifically, the first value is the bottom left of the map and the second value is the top right
downtown.pdx <- c(-70.2954, 43.64278, -70.2350, 43.68093)

# Fetch map from stamen (use source = "osm" for open street maps)
portland <- get_map(location = downtown.pdx, source = "stamen")

# view the map
portlandMap <- ggmap(portland)

# add the points to the map
portlandMap <- portlandMap + geom_point(data = stores, aes(x = longitude, y = latitude), size = 5)

# Add lavels for the points
portlandMap + geom_text(data = stores, aes(label = name, x = longitude+.001, y = latitude), hjust = 0)