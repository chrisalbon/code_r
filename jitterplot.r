# Jitterplot
# original source: ggplot2 book

# load the ggplot2 library
library(ggplot2)

# set the seed so we can reproduce the results
set.seed(1410)

# create a variable that is the first 100 rows of the diamonds dataset
dsmall <- diamonds[sample(nrow(diamonds), 100), ]

# create a jitter plot that displays the price per carat varies with the colour of the diamond using jittering
qplot(color, price / carat, data = diamonds, geom = "jitter")
