# Stacked Area Graph In ggplot2
# original source: r graphics cookbook

# load the ggplot2 library
library(ggplot2)

# load the gcookbook library
library(gcookbook)

# load the plyr library
library(plyr)

# create the ggplot2 data, using Year and thousands (of people) and filled by age group.
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) +
  # add a area plot layer
  geom_area() +
  # change the colors and reserve the legend order (to match to stacking order)
  scale_fill_brewer(palette="Blues", breaks=rev(levels(uspopage$AgeGroup)))

# to reverse the stacking order we use plyr's desc() (decsending order) function

# create the reversed stack ggplot2 data, using Year and thousands (of people) and filled by age group, grouped by reserve agegroup
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup, order=desc(AgeGroup))) +
  # add a area plot layer
  geom_area() +
  # change the colors and reserve the legend order (to match to stacking order)
  scale_fill_brewer(palette="Blues", breaks=levels(uspopage$AgeGroup))