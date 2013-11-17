# Making A Back To Back Histogram
# Original source: http://onertipaday.blogspot.com/2007/06/back-to-back-historgram.html

# Load the Hmisc package (install it if necessary)
library(Hmisc)

# Create 1000  observations, with mean 300
data <- rnorm(1000,300,10)

# Create 1000 sex observations of male and female
sex <- sample(c('female','male'),1000,TRUE)

# Create a back to back histogram of the data divided up by sex
out <- histbackback(split(data, sex), probability=TRUE, xlim=c(-.06,.06), main = 'Back to Back Histogram')

# Add color to the left histogram
barplot(-out$left, col="red" , horiz=TRUE, space=0, add=TRUE, axes=FALSE)

# Add color to the right histogram
barplot(out$right, col="blue", horiz=TRUE, space=0, add=TRUE, axes=FALSE)