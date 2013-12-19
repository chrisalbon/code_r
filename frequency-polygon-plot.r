# Frequency Polygon Plot
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# divide the faithful$waiting data into 10 bins
binsize <- diff(range(faithful$waiting))/10

# create the ggplot2 data for the faithful$waiting variable
ggplot(faithful, aes(x=waiting)) + 
  # add a sensity line
  geom_freqpoly(binwidth=binsize) +
  # zoom out the plot a little bit
  expand_limits(y=0)