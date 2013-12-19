# Coloring Boxplot Outliers
# original source: http://stackoverflow.com/questions/8499378/ggplot2-boxplot-how-do-i-match-the-outliers-color-to-fill-aesthetics

# load the ggplot2 package
library(ggplot2)

# create the ggplot2 data with color determined by Animation
m <- ggplot(movies, aes(y = votes, x = factor(round(rating)), colour = factor(Animation))) +
  # draw a boxplot without standard boxplot colors
  geom_boxplot(outlier.colour = NULL) + 
  # draw a large y-scale
  scale_y_log10()