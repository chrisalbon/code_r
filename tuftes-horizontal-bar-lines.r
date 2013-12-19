# Tufte's Horizontal Bar Lines
# original source: http://stackoverflow.com/questions/13701485/r-graphs-creating-tuftes-horizontal-bar-lines

# load the ggplot2 package
library(ggplot2)    

# create the ggplot2 data
ggplot(msleep, aes(x=order)) + 
  # draw the bars
  stat_bin() + 
  # draw the black and white theme
  theme_bw() +
  # draw white horizontal lines on the yintercept between 5 and 20, spaced every 5
  geom_hline(yintercept=seq(5, 20, 5), col="white")