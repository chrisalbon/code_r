# Bar Graph Of Two Sets Of Data

# Create a variable of rain fall in Spain
spain <- c(0.0001, 0.0059, 0.0855, 0.9082)

# Create a variable of rain fall in Yemen
yemen <- c(0.54, 0.813, 0.379, 0.35)

# create a two row matrix with spain and yemen
rainfall <- rbind(spain, yemen)

# Create a bar graph with paired data (using "beside = TRUE") and with the names of some months
mp <- barplot(height, beside = TRUE, ylim = c(0, 1), names.arg = c("March", "April", "May", "June"))

# Draw the bar values above the bars
text(mp, height, labels = format(height, 4), pos = 3, cex = .75)