# Histogram

# load the ggplot2 package
library(ggplot2)

# hisotogram of the mpg variable from the mtcars dataset
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth=4)