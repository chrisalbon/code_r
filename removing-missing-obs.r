# Removing Observations In Data Frames With Missing Data

# create a data frame of fake data
names <- c("Gob", "George Michael", "Michael", "Maebe", "Jake", "NA", "Taylor", "NA", "Jack")
score.1 <- c(4355, NA, 435345, 435435, 347754, 5754364, 34534543, 43534534, NA)
score.2 <- c(4355, 324, 435345, 435435, 347754, NA, NA, NA, 9230)
df <- data.frame(names, score.1, score.2)

# index only the rows with no missing data
df[complete.cases(df),]