# Scatter Plot

# load the ggplot2 package
library(ggplot2)

# plot using base graphics
plot(mtcars$wt, mtcars$mpg)

# plot using ggplot2
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()