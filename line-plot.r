# ggplot2  line plot
# original source: r graphics cookbook

# load the ggplot2 library
library(ggplot2)

# load the gcookbook library
library(gcookbook)

# create the ggplot2 data
ggplot(BOD, aes(x=Time, y=demand)) + 
  # draw the line
  geom_line() + 
  # expand the y axis to include 0
  expand_limits(y=0) +
  # add points
  geom_point()

# line plot with multiple lines

# load plyr package
library(plyr)

# summarize ToothGrowth
tg <- ddply(ToothGrowth, c("supp", "dose"), summarise, length=mean(len))

# by assigning supp to color, we tell ggplot2 to draw these as two different lines
ggplot(tg, aes(x=dose, y=length, colour=supp)) +
  geom_line() 

# map supp to linetype to draw two different lines (this line with different line types)
ggplot(tg, aes(x=dose, y=length, linetype=supp)) +
  geom_line()

# same as above, but this time since x is a factor, we have to specify to ggplot how to group the data
ggplot(tg, aes(x=factor(dose), y=length, colour=supp, group=supp)) + 
  geom_line()
