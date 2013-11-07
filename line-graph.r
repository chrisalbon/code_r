# Line Graph

# load the ggplot2 package
library(ggplot2)

# plot pressure vs. temperature with a line
ggplot(pressure, aes(x=temperature, y=pressure)) + geom_line() + geom_point()