# 2D Density Plot
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create the ggplot2 data
p <- ggplot(faithful, aes(x = eruptions, y = waiting)) + 
  # add a layer with the points
  geom_point() +
  # and a layer for the density heatmap with the alpha and the color determined by density (the .. refers to the fact that density is a variable that was created inside the ggplot() function)
  stat_density2d(aes(alpha=..density.., fill=..density..), geom="tile", contour=FALSE); p