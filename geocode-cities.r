# Geocode A City
# original source: http://stackoverflow.com/questions/3257441/geocoding-in-r-with-google-maps

# load the RCurl package
library(RCurl)

# load the RJSONIO package
library(RJSONIO)

# create a function that constructs the URL for Google
construct.geocode.url <- function(address, return.call = "json", sensor = "false") {
  root <- "http://maps.google.com/maps/api/geocode/"
  u <- paste(root, return.call, "?address=", address, "&sensor=", sensor, sep = "")
  return(URLencode(u))
}

# create a function that takes the URL created above, and passes it go Google
gGeoCode <- function(address,verbose=FALSE) {
  if(verbose) cat(address,"\n")
  u <- construct.geocode.url(address)
  doc <- getURL(u)
  x <- fromJSON(doc,simplify = FALSE)
  if(x$status=="OK") {
    lat <- x$results[[1]]$geometry$location$lat
    lng <- x$results[[1]]$geometry$location$lng
    return(c(lat, lng))
  } else {
    return(c(NA,NA))
  }
}

# example of the function in use
x <- gGeoCode("Nairobi, KE"); x 
