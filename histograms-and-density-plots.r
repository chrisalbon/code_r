# Histograms and Density Plots
# original source: ggplot2 book

# histograms and density plots show the distribution of a single variable across it's values

# load the ggplot2 library
library(ggplot2)

# set the seed so we can reproduce the results
set.seed(1410)

# plot a histogram
qplot(carat, data = diamonds, geom = "histogram")

# plot a histogram with more smoothness (by increasing bin size)
qplot(carat, data = diamonds, geom = "histogram", binwidth = 1)

# plot a density plot
qplot(carat, data = diamonds, geom = "density")

# plot a density plot with a smoother line
qplot(carat, data = diamonds, adjust = 4, geom = "density")

# plot a density plot with the color of the lines determined by the diamond's color (the "color" variable)
qplot(carat, data = diamonds, geom = "density", colour = color)

# plot a histogram plot with the color of the lines determined by the diamond's color (the "color" variable)
qplot(carat, data = diamonds, geom = "histogram", fill = color)
