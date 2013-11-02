# Import XML
# Original source: http://giventhedata.blogspot.com/2012/06/r-and-web-for-beginners-part-ii-xml-in.html

# load XML library
library(XML)

# save the URL as a string element
xml.url <- "http://www.w3schools.com/xml/plant_catalog.xml"

# parse the xml file from the web
xmlfile <- xmlTreeParse(xml.url); xmlfile

# access the top node, skipping over DTD and the comment. In other words, get straight to the data and ignore the other stuff.
xmltop <- xmlRoot(xmlfile); xmltop

# extract XML-values with xmlSApply. More specifically, this turns each $PLANT node into it's own row, each tag into a column, and each value within the tag into an element
plantcat <- xmlSApply(xmltop, function(x) xmlSApply(x, xmlValue)); plantcat

# get the data in a data-frame and have a look at the first rows and columns. The t() function transposes the plantcat variable
plantcat_df <- data.frame(t(plantcat),row.names=NULL)
head(plantcat_df)
