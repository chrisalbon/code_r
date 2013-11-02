# Advanced Applying With Plyr

# load the plyr package
library(plyr)

## the plyr package uses **ply() functions, where the first star in the input and the second star is the output. For example, llplyr takes a list in and spits a list out.

#generate some fake list data
war.name <- c("WWII", "WWII", "WWI", "WWI", "Franco-Prussian", "Franco-Prussian", "Franco-Prussian", "Boer War", "Boer War", "Boer War")
deaths <- c(938, 9480, 2049, 1039, 3928, 9202, 10933, 40293, 10394, 20394)
allies <- c(9, 5, 4, 6, 3, 2, 4, 1, 2, 3)
casualties <- list(war.name, deaths, allies)
casualties.df <- data.frame(war.name, deaths, allies)

# split up the list by casualties, find all the unique elements, output them as a list
llply(casualties, unique)

# r*ply replaces replicate, with the * denoting the output

# run runif(1) five times, outputting a data frame
rdply(5, runif(1))

## ddply replaces tapply, it inputs a data frame and outputs a data frame. 

# take the data frame casualties.df, split it up by war.name (for some reasons it uses the .() function, the find the mean)
ddply(
  casualties.df,
  .(war.name),
  colwise(mean)
)