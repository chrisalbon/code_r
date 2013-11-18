# Size Plot
# original source: http://www.r-bloggers.com/using-r-coloured-sizeplot-with-ggplot2/

# load the ggplot2 package
library(ggplot2)

# load the reshape2
library(reshape2)

# create some simulated data
data <- data.frame(
  x=c(0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4),
  y=c(0, 0, 0, 3, 1, 1, 1, 2, 2, 1, 4, 4),
  group=c(rep(1, 6), rep(2, 4), rep(3, 2)))

# create a new object that "melts" the data so each row is a unique id-variable combination
counts <- melt(table(data[1:2]))

# add column names
colnames(counts) <- c(colnames(data)[1:2], "count")

# remove zeros
counts <- subset(counts, count != 0)

# plot with the size of the dot being count
sizeplot <- qplot(x=x, y=y, size=count, data=counts) + scale_size(range=c(5, 10))

# view the size plot
sizeplot

# create some factors
counts.and.groups <- merge(counts, unique(data))

# create a sizeplot with color determined by a factor
sizeplot.colour <- qplot(
  x=x, y=y, size=count,
  colour=factor(group), data=counts.and.groups) +
  scale_size(range=c(5, 10))

# view the plot
sizeplot.colour

dev.off()


