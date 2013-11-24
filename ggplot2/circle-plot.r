# Circle Plot
# original source: http://stackoverflow.com/questions/11641356/circular-plot-in-ggplot2-with-line-segments-connected-in-r

# create simulated data. start denotes where out of 10 each segment starts, end where they end, and label what they are called
filld <- data.frame (start = c(1, 4, 6, 7.5, 8, 9), end = c(4, 6, 7.5, 8, 9, 10),
                     label = c("A", "B", "C", "A", "C", "D"))

# create p, which is the middle of each row (to tell R where to place the label text)
filld$p <- rowMeans(subset(filld, select = c(start, end)))

# create the ggplot data
ggplot(filld, aes(xmin = start, xmax = end, ymin = 4, ymax = 5, fill = label)) + 
  # draw the bar plot
  geom_rect() + 
  # add the label lext
  geom_text(aes(x = p, y = 4.5, label = label), colour = "white", size = 10) +
  # wrap the bar plot into a circle
  coord_polar() + 
  # scale y between 0 and 5, so it creates an empty circle in the middle
  scale_y_continuous(limits = c(0, 5))