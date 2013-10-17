# A Different Way Using Real Data
# Source: http://stackoverflow.com/questions/13004813/downloading-json-data-into-r?lq=1

library(RJSONIO)
library(RCurl)

# grab the data
raw_data <- getURL("http://api.crunchbase.com/v/1/companies.js")

# Then covert from JSON into a list in R
data <- fromJSON(raw_data)
length(data)
[1] 101782

# We can coerce this to a data.frame
 final_data <- do.call(rbind, data)
 # Then write it to a flat csv file
 write.csv(final_data, "final_data.csv")