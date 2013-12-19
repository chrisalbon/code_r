# Scatterplot With Trend Line
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# load plyr package
library(plyr)

# reset the graphing device
dev.off()

# create the scatterplot
sps <- ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) +
  geom_point() +
  scale_colour_brewer(palette = "Set1")

# create a scatterplot with loess smoothing
sps + geom_smooth()

# create a scatterplot with lm (straight line) trend line
sps + geom_smooth(method=lm, se=FALSE, fullrange=TRUE)
