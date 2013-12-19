# Rug Plot
# Original source: r graphics cookbook

# load the gcookbook package for the data
library(gcookbook)

# load the ggplot2 package
library(ggplot2)

# reset the graphing device
dev.off()

# create the scatterplot
sps <- ggplot(heightweight, aes(x = ageYear, y = heightIn, colour = sex)) +
  geom_point() +
  scale_colour_brewer(palette = "Set1")

# create a text annotation layer at location x=16.5 and y=52
sps + annotate("text", label="r-score: .02", parse = TRUE, x=16.5, y=52)