# Overlapping Histrograms
# Original Source: http://r-nold.blogspot.com/2013/03/overlapping-histogram-in-r.html

# Create two fictional histographs

# A histograph of 1000 normally distributed points with mean 4
h2 <- rnorm(1000,4)

# A histograph of 1000 normally distributed points with mean 6
h1 <- rnorm(1000,6)

# Histogram Colored (blue and red)

# Create a histogram of h1, with colors, at .5 opacity
hist(h1, col=rgb(1,0,0,0.5),xlim=c(0,10), ylim=c(0,200), main="Overlapping Histogram", xlab="Variable")

# Create a histogram of h1, with colors, at .5 opacity
hist(h2, col=rgb(0,0,1,0.5), add=T)

# Combine the two histograms
box()
