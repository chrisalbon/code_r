# Plot Two Lines In Two Seperate Graphs With A Single Axis
# Original source: http://wiekvoet.blogspot.com/2013/12/plotting-y-and-logy-in-one-figure.html

# load the required packages
library(ggplot2)
library(lattice)

# create a set of simulated data containing three variables
datastart <- data.frame(x=rep(1:5,2),
                        y = c(1,2,10,50,1, .1,9,8,20,19), 
                        type = rep(c('a','b'), each = 5)
                        )

# create data1 which is the same as datastart
data1 <- datastart
data1$lab <- 'linear'

# create data2 which contains log of datastart$y
data2 <- datastart
data2$lab <- 'log'
data2$y <- log10(data2$y)

# bind data1 and data2 back together
dataplot <- rbind(data1, data2)

# create the ggplot2 data
p <- ggplot(dataplot, aes(x, y, colour = type)) + 
  geom_point()

# create a facet grid for the two plots
p + facet_grid(lab ~ ., scales='free_y') + 
  labs(title = 'bla bla')