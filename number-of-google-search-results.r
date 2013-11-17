# Find Approximate Number Of Google Search Results For A String
# Original source: https://gist.github.com/drewconway/791559

# load the RCurl package
require(RCurl)

# ;pad the xml package
require(XML)

# create a google.counts functions
google.counts<-function(s){
  # take the variable "s" and paste it into a google search url
  search.url<-paste("http://www.google.com/search?q=",gsub(" ","+",s),sep="")
  # grab the html contents of the search results page
  search.html<-getURL(search.url)
  # format the html contents
  parse.search<-htmlTreeParse(search.html,useInternalNodes = TRUE)
  # find a div with the id "resultStats"
  search.nodes<-getNodeSet(parse.search,"//div[@id='resultStats']")
  # Take the entire tag, remove tags themselves (xmlValue), seperate every string by the spaces (strsplit), and take the second string (strsplit()[[1]][2]). 
  search.value<-strsplit(xmlValue(search.nodes[[1]])," ",fixed=TRUE)[[1]][2]
  # display, as numeric, the number of search results
  return(as.numeric(gsub(",","",search.value,fixed=TRUE)))
}

# an example of using the library
google.counts("frogs")