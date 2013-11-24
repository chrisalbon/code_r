# Hills And Valley Bar Chart

# load the ggplot2 package
library(ggplot2)

# load the gcookbook package
library(gcookbook)

# create a subset of data from the Berkeley data and year after 1900
csub <- subset(climate, Source=="Berkeley" & Year >= 1900) 

# create a logical variable that says if the value is above or below 0
csub$pos <- csub$Anomaly10y >= 0

# create a ggplot of Year and Temperature, visualuzed with a bar those filled by csub$pos
ggplot(csub, aes(x=Year, y=Anomaly10y, fill=pos)) +
  geom_bar(stat="identity", position="identity")

# same chart above but with more features defeind
ggplot(csub, aes(x=Year, y=Anomaly10y, fill=pos)) +
  geom_bar(stat="identity", position="identity", colour="black", size=0.25) + scale_fill_manual(values=c("#CCEEFF", "#FFDDDD"), guide=FALSE)
