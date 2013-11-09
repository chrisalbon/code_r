# Drop Columns From Dataframe
# Original Source: http://stackoverflow.com/questions/4605206/drop-columns-r-data-frame

# create a dataframe with three columns
df <- data.frame(x = runif(100), y = runif(100), z = runif(100))

# drop columns y and z
df <- subset(df, select = -c(y, z) )

# only keep column x (thus dropping y and z)
df <- subset(df, select = c(x))