# Animated Map Gif
# original source: http://rud.is/b/2013/09/19/animated-irl-pirate-attacks-in-r/

# load the required packages
library(maps)
library(hexbin)
library(maptools)
library(ggplot2)
library(sp)
library(mapproj)

# download the pirate data shape file
download.file("http://msi.nga.mil/MSISiteContent/StaticFiles/Files/ASAM_shp.zip", destfile="ASAM_shp.zip")

# unzip the file in the working directory
unzip("ASAM_shp.zip")

# load the data file "ASAM 05 DEC 13.shp as a dataframe called pirates.df (you'll need to change the file depending on when you download the data)
pirates.df <- as.data.frame(readShapePoints("ASAM 05 DEC 13"))

# load a map of the world
world <- map_data("world")

# remove Antarctica
world <- subset(world, region != "Antarctica")

# create a vector with a list of years we want the data from
ends <- 1979:2013

# loop thRough, extRact data, build plot, save plot: BOOM

# for each year in "ends"...
for (end in ends) {
  # create a 500x250 png containing...
  png(filename=sprintf("arrr-%d.png",end),width=500,height=250,bg="white")
  # create a vector of the dates of the attacks
  dec.df <- pirates.df[pirates.df$DateOfOcc > "1970-01-01" & pirates.df$DateOfOcc < as.Date(sprintf("%s-12-31",end)),] 
  # create an element of the first and land attack dates
  rng <- range(dec.df$DateOfOcc)
  # create an employ ggplot
  p <- ggplot() 
  # draw a polygon of the world
  p <- p + geom_polygon(data=world, aes(x=long, y=lat, group=group), fill="gray40", colour="white")
  # plot the event data (dec.df) in a hexagon grid
  p <- p + stat_summary_hex(fun="length", data=dec.df, aes(x=coords.x1, y=coords.x2, z=coords.x2), alpha=0.8)
  # create a legend
  p <- p + scale_fill_gradient(low="white", high="red", "Pirate Attacks recorded")
  # make the plot's theme black and white, and change the labels
  p <- p + theme_bw() + labs(x="",y="", title=sprintf("Pirate Attacks From %s to %s",rng[1],rng[2]))
  # make the plot prettier and with a border
  p <- p + theme(panel.background = element_rect(fill='#A6BDDB', colour='white'))
  # view the plot
  print(p)
  # reset devices so it is ready for the next plot
  dev.off()
}

# run a terminal command to turn all the pngs created in the working directory into one animated gif (requires imagemagick)
system("convert -delay 45 -loop 0 arrr*g arrr500.gif")
