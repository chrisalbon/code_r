# Plot With Both Lines And Poiints

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create a plot with both lines and dots
ggplot(BOD, aes(x=Time, y=demand)) + 
  geom_line() + 
  geom_point()

