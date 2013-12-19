# Density Curve Plot
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create the ggplot2 data for the faithful$waiting variable
ggplot(faithful, aes(x=waiting)) + 
  # add a sensity line
  geom_line(stat="density") +
  # zoom out the plot a little bit
  expand_limits(y=0)

# create the ggplot2 data for three lines of different levels of smoothing
ggplot(faithful, aes(x=waiting)) +
  # "adjust" determines the level of smoothing, larger the number, the more smoothing
  geom_line(stat="density", adjust=.25, colour="red") +
  geom_line(stat="density") +
  geom_line(stat="density", adjust=2, colour="blue")