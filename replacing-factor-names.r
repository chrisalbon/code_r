# Replacing Factor Names Using Match

# For the levels of the Baltimore crime district variable, find instances where the names of the levels are WESTERN and replace with WEST
levels(bmore.crime$district)[match("WESTERN",levels(bmore.crime$district))] <- "WEST"

# You can also do another way. Since every level in a factor can be identified by both a name (as done in the previous example) and a number.

levels(bmore.crime$district) # view the levels of the district factor
levels(bmore.crime$district)[3] <- 'NORTHEAST' # replace the name of the third factor, NORTHEASTERN, with NORTHEAST
