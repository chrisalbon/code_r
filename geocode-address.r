# Return A Lat/Long For An Address
# original source: https://gist.github.com/drewconway/2948536

# load the RCurl package
library(RCurl)

# load the RJSONIO package
library(RJSONIO)

# Get a lat/lon value for each address
geocode.addr <- function(city, country) {
  geo.url <- "http://maps.googleapis.com/maps/api/geocode/json?address="
  geo.text <- getURL(paste(geo.url, URLencode(paste(city, country, collapse="+")), "&sensor=false", sep=""))
  geo.json <- fromJSON(geo.text)
  if(geo.json$status == "OK"){
    return(geo.json$results[[1]]$geometry$location)
  }
  else{
    if(geo.json$status == "OVER_QUERY_LIMIT") {
      stop("Hit rate limit")
    }
    else {
      return(c(NA, NA))
    }
  }
}

# example code:
geocode.addr("1600 Pennsylvania Ave, Washington, DC", "USA")
