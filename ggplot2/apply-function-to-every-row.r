# Apply A Function On Every Row Of A Dataframe
# original source: http://stackoverflow.com/questions/2074606/doing-a-plyr-operation-on-every-row-of-a-data-frame-in-r

# create a simulated dataframe
x <- rnorm(10)
y <- rnorm(10)
df <- data.frame(x,y)

# array to dataframe apply, on df, for each row, apply transform() to create a variable called "max" whose values are the maximum value of x or y (whichever is higher).
adply(df, 1, transform, max = max(x, y))