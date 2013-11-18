# Selecting Data According To Patterns

# create simulated district names
district <- factor(c("NORTH", "NORTHWEST", "CENTRAL", "SOUTH", "SOUTHWEST", "WESTERN"))

#Select all the cases where Baltimore's district name is "North"
district[grep("NORTH", as.character(district))]