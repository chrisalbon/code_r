# Reorder Columns
# original source: http://stackoverflow.com/questions/5620885/how-does-one-reorder-columns-in-r

# create some simulated data
df <- data.frame(1,2,3,4)

# move the third element to the second element's spot
df <- df[,c(1,3,2,4)]