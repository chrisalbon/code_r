# Rug Plot
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

# add the riug plot
sps + geom_rug(position="jitter", size=.2)