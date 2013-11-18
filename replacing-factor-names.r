# Replacing Factor Names Using Match

# create simulated factor names
district <- factor(c("NORTH", "NORTHWEST", "CENTRAL", "SOUTH", "SOUTHWEST", "WESTERN"))

# for the levels of the Baltimore crime district variable, find instances where the names of the levels are WESTERN and replace with WEST
levels(district)[match("WESTERN",levels(district))] <- "WEST"

# you can also do another way. Since every level in a factor can be identified by both a name (as done in the previous example) and a number.

levels(district) # view the levels of the district factor
levels(district)[3] <- 'NORTHEAST' # replace the name of the third factor, NORTHEASTERN, with NORTHEAST

