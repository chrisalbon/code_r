# Bar Charts
# original source: ggplot2 book

# The bar geom counts the number of instances of each class so that you don’t need to tabulate your values beforehand

# load the ggplot2 library
library(ggplot2)

# set the seed so we can reproduce the results
set.seed(1410)

# plot the color
qplot(color, data = diamonds, geom = "bar")
