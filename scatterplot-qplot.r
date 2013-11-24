# QPlot Scatterplot

# load the ggplot2 package
library(ggplot2)

# plot x=displ, y=hwy from mpg data, with color by cyl
qplot(displ, hwy, data = mpg, colour = factor(cyl))

# turn off dev devices
dev.off()

