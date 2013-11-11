# Find Approximate Number Of Google Search Results For A String
# Original source: https://gist.github.com/drewconway/791559



require(RCurl)
require(XML)

google.counts<-function(s){
  search.url<-paste("http://www.google.com/search?q=",gsub(" ","+",s),sep="")
  search.html<-getURL(search.url)
  parse.search<-htmlTreeParse(search.html,useInternalNodes = TRUE)
  search.nodes<-getNodeSet(parse.search,"//div[@id='resultStats']")
  search.value<-strsplit(xmlValue(search.nodes[[1]])," ",fixed=TRUE)[[1]][2]
  return(as.numeric(gsub(",","",search.value,fixed=TRUE)))
}

google.counts("frogs")

s <- "frogs"