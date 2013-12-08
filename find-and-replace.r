# Find And Replace
# Original source: http://christophergandrud.blogspot.com/2013/12/three-quick-and-simple-data-cleaning.html

# load the DataCombine package
library(DataCombine)

# create a dataframe of simulated values
data.df <- data.frame(cities = c("London, UK", "Oxford, UK", "Berlin, DE", "Hamburg, DE", "Oslo, NO"), score = c(8, 0.1, 3, 2, 1))

# create a dataframe of two vectors, one with the characters to be replaced and the other with what to replace it with
replace.values <- data.frame(short = c("UK", "DE"), long = c("England", "Germany"))

# find and replace the character strings
data.longnames.df <- FindReplace(data = data.df, Var = "cities", replaceData = replace.values, from = "short", to = "long"); data.longnames.df