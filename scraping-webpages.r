# Scraping Web Pages
# Original source: Learning R

# Load RCurl Library
library(RCurl)

# Create a string with the URL to the website
time_url <- "http://tycho.usno.navy.mil/cgi-bin/timer.pl"

# Download the HTML
time_page <- getURL(time_url)

# Use concatenate and view the html in a pretty way
cat(time_page)

# load XML library
library(XML)

# parse the HTML
time_doc <- htmlParse(time_page); time_doc

# extract everything within the "pre" tag. The // denotes that we are searching the entire document. The [[1]] refers to the fact we are not moving a list to pre but moving the contents of the list.
pre <- xpathSApply(time_doc, "//pre")[[1]]

# split along newline \n, divides up each time
values <- strsplit(xmlValue(pre), "\n")[[1]][-1]

# split along the tabs \t+ divides each time into time the time and timezone
times <- strsplit(values, "\t+")