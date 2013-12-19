# Venn-Scatterplot
# Original source: http://stackoverflow.com/questions/2397097/how-can-a-data-ellipse-be-superimposed-on-a-ggplot2-scatterplot

# create a dataframe of simulated data
x <- c(2,3,4, 10,12,10, 20,21,23)
y <- c(50,54,49, 30,25,26, 5,6,5)
group <- c("a", "a", "a", "b", "b", "b", "c", "c", "c")
df <- data.frame(x,y, group)
rm(x, y, group)

# load ggplot2
library(ggplot2)
library(devtools)
source_url("https://raw.github.com/JoFrhwld/FAAV/master/r/stat-ellipse.R")

#calculating ellipses
library(ellipse)
df_ell <- data.frame()
for(g in levels(df$group)){
  df_ell <- rbind(df_ell, cbind(as.data.frame(with(df[df$group==g,], ellipse(cor(x, y), 
                                                                             scale=c(sd(x),sd(y)), 
                                                                             centre=c(mean(x),mean(y))))),group=g))
}
#drawing
library(ggplot2)
ggplot(data=df, aes(x=x, y=y,colour=group)) + 
  geom_point(size=1.5, alpha=.6) +
  geom_path(data=df_ell, aes(x=x, y=y,colour=group), size=1, linetype=2)