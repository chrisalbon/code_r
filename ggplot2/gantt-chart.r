# Gantt Charts
# original source: http://stackoverflow.com/questions/3550341/gantt-charts-with-r

# load the reshape package
library(reshape)

# load the ggplot2 package
library(ggplot2)

# create some labels
tasks <- c("Review literature", "Mung data", "Stats analysis", "Write Report")

# create a data frame with some simulated data
dfr <- data.frame(
  name        = factor(tasks, levels = tasks),
  start.date  = c("24/08/2010", "01/10/2010", "01/11/2010", "14/02/2011"),
  end.date    = c("31/10/2010", "14/12/2010", "28/02/2011", "30/04/2011"),
  is.critical = c(TRUE, FALSE, FALSE, TRUE)
)

# melt the data so every date, whether start or end, has it's own row
mdfr <- melt(dfr, measure.vars = c("start.date", "end.date"))

# create a ggplot of mdfr with x value being dates in a certain date format, y value being names, and the color being determined by critical
ggplot(mdfr, aes(as.Date(value, "%d/%m/%Y"), name, colour = is.critical)) + 
  # draw the lines
  geom_line(size = 6) +
  # add x and y axis
  xlab("Date") + ylab("Activity") +
  # make the theme minimal
  theme_minimal()