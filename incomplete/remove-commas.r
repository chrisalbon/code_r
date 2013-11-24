# Remove Commas From Numbers
# original source: http://r.789695.n4.nabble.com/remove-commas-in-a-number-when-reading-a-text-file-td3594782.html

# create some simulated data
data <- c("1,234,234", "453,567,346", "43,673", "2,567")

# use gsub to remove all the commas, then convert the object into numeric
as.numeric(gsub(",", "", data, fixed = TRUE))
