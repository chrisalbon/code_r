# Comma Seperate A String
# Original code: http://onertipaday.blogspot.com/2007/06/string-manipulation-insert-delim.html

# Create a text string
cities <- c("sonomanapahealdsburgoakland")

# A vector with the locations of where we want each comma
comma.locations <- c(6,4,10,7)

# Place the commas into the string according to the locations specifics in comma.locations
paste(read.fwf(textConnection(cities), comma.locations, as.is = TRUE), collapse = ",")
