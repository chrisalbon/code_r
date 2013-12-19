# Balloon Plot
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create a subset of countries for year 2009 and only for a vector of countries names
cdat <- subset(countries, Year==2009 & Name %in% c("Canada", "Ireland", "United Kingdom", "United States",
"New Zealand", "Iceland", "Japan", "Luxembourg", "Netherlands", "Switzerland"))

# create the ggplot data with the size of the balloons determined by GDP
p <- ggplot(cdat, aes(x = healthexp, y = infmortality, size = GDP)) +
  # select the select of the points and their colors
  geom_point(shape=21, colour="#3333ff", fill="#0066CC") +
  # change the scale of the point size to make them bigger
  scale_size_area(max_size=15); p