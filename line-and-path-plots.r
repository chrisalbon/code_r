# Line and Path Plots
# original source: ggplot2 book

# line plots is a path plot sorted by the x value

# load the ggplot2 library
library(ggplot2)

# set the seed so we can reproduce the results
set.seed(1410)

# plot a line plot with the date on the x axis and unemployment rate
qplot(date, unemploy / pop, data = economics, geom = "line")

# plot a line plot with the date being the x axis and the avg number of weeks unemployed on the y axis
qplot(date, uempmed, data = economics, geom = "line")

