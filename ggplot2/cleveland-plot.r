# Cleveland Plot
# original source: r graphics cookbook

# load the ggplot2 library
library(ggplot2)

# load the gcookbook library
library(gcookbook)

# create an object that is the top 25 hitters of 2001
tophit <- tophitters2001[1:25, ]

# get the names, sorted first by lg, then by avg
nameorder <- tophit$name[order(tophit$lg, tophit$avg)]

#order the factor variable in the order of nameorder
tophit$name <- factor(tophit$name, levels=nameorder)

# create the ggplot data
ggplot(tophit, aes(x=avg, y=reorder(name, avg))) + 
  # use a larger dot
  geom_point(size=3) + 
  # use the simple theme
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(colour="grey60", linetype="dashed"))

# create the ggplot2 data
ggplot(tophit, aes(x=reorder(name, avg), y=avg)) + geom_point(size=3) +
  # use the black and white theme
  theme_bw() +
  # angle axis text
  theme(axis.text.x = element_text(angle=60, hjust=1),
        # no major y grid
        panel.grid.major.y = element_blank(),
        # no minor y grid
        panel.grid.minor.y = element_blank(),
        # dashed major x grids
        panel.grid.major.x = element_line(colour="grey60", linetype="dashed"))

# create the basic ggplot data
ggplot(tophit, aes(x=avg, y=name)) +
  # create a segment plot, with names at the end of the y axis and a grey line
  geom_segment(aes(yend=name), xend=0, colour="grey50") + 
  # plot the n points and color them
  geom_point(size=3, aes(colour=lg)) + 
  # change the plot color to red and blue
  scale_colour_brewer(palette="Set1", limits=c("NL","AL"), guide=FALSE) +
  # make the grid simple, black, and white
  theme_bw() + theme(panel.grid.major.y = element_blank()) +
  # sort the plots by lg
  facet_grid(lg ~ ., scales="free_y", space="free_y")
