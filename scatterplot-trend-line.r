# Smooth A Scatterplot Trend Line
# original source: ggplot2 book

# load the ggplot2 library
library(ggplot2)

# set the seed so we can reproduce the results
set.seed(1410)

# create a variable that is the first 100 rows of the diamonds dataset
dsmall <- diamonds[sample(nrow(diamonds), 100), ]

# create a scatterplot with a smoothing line with a wiggly trend line
p1 <- qplot(carat, price, data = dsmall, geom = c("point", "smooth"), span = 0.2); p1

# create a scatterplot with a smoothing line with a smooth trend line
p2 <- qplot(carat, price, data = dsmall, geom = c("point", "smooth"), span = 1); p2
