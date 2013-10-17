# Importing a JSON file into R

# Install the rjson package
install.packages("rjson")

# Load the rjson package
library("rjson")

# Import the JSON data and concatenate it
json_file <- "http://webonastick.com/uscl/feeds/uscl.json.txt"
json_data <- fromJSON(paste(readLines(json_file), collapse=""))
