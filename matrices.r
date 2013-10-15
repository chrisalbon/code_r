# Matrices

# We can also bind two multiple together as columns. This can also act the same as adding a new column.
our.names <- c("John", "Cindy", "Mark", "Stacy") # Create a vector of names, called our.names
our.team <- cbind(our.names, our.ages) # Create a dataframe that binds our.names and our.ages together as columns
our.team # view our.team

# We can also bind multiple vectors together as rows. This can act the same as adding a new row.
our.new.team <- rbind(our.team, c("Jesse", 20)) # Add a row to our.team that has the values "Jesse" and 20
our.new.team # view our.new.team