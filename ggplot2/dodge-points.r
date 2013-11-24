# ggplot2 dodge points to prevent overlap
# original source: r graphics cookbook

# load the ggplot2 library
library(ggplot2)

# load the gcookbook library
library(gcookbook)

# sometimes points can overlap, making it hard to see. You can adjust for this by "dodging" the elements (line and point in this case) by a small amount

ggplot(tg, aes(x=dose, y=length, shape=supp)) + 
  # dodge lines by 0.2 
  geom_line(position=position_dodge(0.2)) + 
  # dodge points by 0.2
  geom_point(position=position_dodge(0.2), size=4)