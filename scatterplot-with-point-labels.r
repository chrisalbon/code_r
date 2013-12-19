# Scatterplot With Point's Labelled
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create the scatterplot
sps <- ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) +
  geom_point() +
  scale_colour_brewer(palette = "Set1")

# add a layer of point labels to the scatterplot, offset of .2 of the x axis
sps + geom_text(aes(x = ageYear + .2, label = sex))
