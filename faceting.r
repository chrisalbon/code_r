# Faceting in ggplot2
# original source: ggplot2 book

# faceting is when we show many little charts, one for each category of a factor

# load the ggplot2 library
library(ggplot2)

# set the seed so we can reproduce the results
set.seed(1410)

# create a plot of x = carat and y = count, with a single chart for each category of diamond color
qplot(carat, data = diamonds, facets = color ~ ., geom = "histogram", binwidth = 0.1, xlim = c(0, 3))