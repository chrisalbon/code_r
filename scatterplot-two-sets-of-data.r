# Scatter plot two sets of data with smooth lines

# Create fake infant mortality data for Spain
spain.imr <- rnorm(50)

# Create fake GDP data for Spain
spain.gdp <- rnorm(50,3,1)

# Create fake infant mortality data for Yemen
yemen.imr <- rnorm(50)

# Create fake GDP data for Yemen
yemen.gdp <- rnorm(50,1,1)

# Create a scatter spot with both variables from both sets of Spanish and Yemeni data, all data is blue
plot(spain.imr, spain.gdp, xlim=range(c(spain.imr, yemen.imr)), ylim=range(c(spain.gdp, yemen.gdp)), col="blue", xlab="Infant Mortality Rate", ylab="Gross Domestic Product")

# Change all Yemen data to red
points(yemen.imr, yemen.gdp, col="red")

# Create a smoothing line for both Yemen's and Spain's data
points(loess.smooth(spain.imr, spain.gdp), type="l", col="blue")
points(loess.smooth(yemen.imr, yemen.gdp), type="l", col="red")

# Create a legend to explain the colors
legend("topright", c("Spain", "Yemen"), col = c("blue", "red"), text.col = "black", lty = c(0, 0), pch = c(1, 1), bg = "white")

# Create a title with black font in bold
title(main="GDP and IMR in Spain and Yemen", col.main="Black", font.main=4)