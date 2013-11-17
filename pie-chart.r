# Pie Chart
# Original source: http://www.statmethods.net/graphs/pie.html

# Create some casualty numbers
slices <- c(10, 12, 4, 16, 8)

# Create labels that correspond to the casualty numbers
lbls <- c("US", "UK", "Australia", "New Zealand", "France")

# Create Percents For Each Slice
pct <- round(slices/sum(slices)*100)

# Add Percents To Labels
lbls <- paste(lbls, pct)

# Add The Percent Symbol To Labels
lbls <- paste(lbls,"%",sep="")

# Create a pie chart with labels, with each slice colored by the terrain color pallete
pie(slices,labels = lbls, col=terrain.colors(length(lbls)), main="Casualties") 