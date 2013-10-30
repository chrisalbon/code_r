# Violin Plots
# Original Source: http://www.statmethods.net/graphs/boxplot.html
library(vioplot)

## Create some fake data about different types of casualties in a war
fpwar <- c(234,234,643,74,323,67,34,78,434)
wwi <- c(42,534,65,47,85,67,90,45,78)
wwii <- c(345,2,25,345,35,373,463,46,85)

## Create a violin of the number of deaths
vioplot(fpwar, wwi, wwii, names=c("Franco-Prussian", "WWI", "WWII"), col="red3")