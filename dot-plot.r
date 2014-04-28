# Dot Plot (Wilkinson Plot)
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create a subset of countries
countries2009 <- subset(countries, Year==2009 & healthexp>2000)

# create the ggplot2 data
p <- ggplot(countries2009, aes(x = infmortality))

# create the dotplot layer
p + geom_dotplot(binwidth=.25) + 
  # rescale the y axis and remove tic marks
  scale_y_continuous(breaks=NULL) + 
  # remove the axis labels
  theme(axis.title.y=element_blank())