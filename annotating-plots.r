# 2D Density Plot
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create the ggplot2 data
p <- ggplot(faithful, aes(x = eruptions, y = waiting))

# Add Text

# create the ggplot2 plot
p + geom_point() + 
  # add text
  annotate("text", x = 3, y = 48, label="Group 1", family="serif", fontface="italic", colour="darkred", size=6) +
  # add more text
  annotate("text", x = 4.5, y = 66, label="Group 2", family="serif", fontface="italic", colour="darkred", size=6)

# Add Mathematical Expressions

# create the ggplot2 plot
p + geom_point() +
  # add the formula, parse=TRUE turns the next into a formula
  annotate("text", x = 4.5, y = 66, parse = TRUE, label = "frac(1, sqrt(2 * pi)) * e ^ {-x^2 / 2}")

# Add Lines

# load the grid package to create the flat ends of the line seqment and arrow
library(grid)

# create the ggplot2 plot
p + geom_point() + 
  # add a horizontal line at y = 66
  geom_hline(yintercept = 66) + 
  # add a vertical line at 3 = 3
  geom_vline(xintercept = 3) + 
  # add an angled line
  geom_abline(intercept = 37.4, slope = 9) +
  # add a line segment
  annotate("segment", x = 1, xend = 2.5, y = 75, yend = 75, arrow=arrow(ends="both", angle=90, length=unit(.2,"cm"))) + 
  # add an arrow
  annotate("segment", x = 4, xend = 5, y = 60, yend = 55, colour="blue", size=2, arrow=arrow())

# Add A Shaded Rectangle

# create the ggplot2 plot
p + geom_point() +
  # add a shaped blue rectangle
  annotate("rect", xmin=1, xmax=3, ymin=40, ymax=100, alpha=.1, fill="blue")
