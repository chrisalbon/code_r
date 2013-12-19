# ggplot2 adding labels to a bar graph
# original source: r graphics cookbook

# load the ggplot2 package
library(ggplot2)

# load the gcookbook package
library(gcookbook)

# below the top

# create a ggplot data
ggplot(cabbage_exp, aes(x=interaction(Date, Cultivar), y=Weight)) +
  # draw the bar plot
  geom_bar(stat="identity") +
  # create the weight text above the bar in white
  geom_text(aes(label=Weight), vjust=1.5, colour="white")

# above the top

# create a ggplot data
ggplot(cabbage_exp, aes(x=interaction(Date, Cultivar), y=Weight)) +
  # draw the bar plot
  geom_bar(stat="identity") +
  # create the weight text below the bar in white
  geom_text(aes(label=Weight), vjust=-0.2)

# labels on a grouped bar chart

# create the ggplot data for a grouped bar chart
ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  # plot the bars
  geom_bar(stat="identity", position="dodge") +
  # create the label, "dodged" to fit the bars
  geom_text(aes(label=Weight), vjust=1.5, colour="white",
            position=position_dodge(.9), size=3)
