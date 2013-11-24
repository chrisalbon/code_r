# Converting List Of Dataframes Into A Single Dataframe
# original source: http://stackoverflow.com/questions/2851327/converting-a-list-of-data-frames-into-one-data-frame-in-r

# imagine we have two dataframes of numeric data contained within a single list, and  we want to combine that data by stacking them on top of each other as a single dataframe

# create some simulated data
high <- data.frame(a = 1001:1005, b = 1006:1010)
low <- data.frame(a = 1:5, b = 6:10)

# combine them into a list
df.list <- list(low, high)

# rbind across every item of df.list and view it
df <- do.call("rbind", df.list);df