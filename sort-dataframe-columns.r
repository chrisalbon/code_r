# Sorting Columns Of A Data Frame
# original source: http://stackoverflow.com/questions/1296646/how-to-sort-a-dataframe-by-columns-in-r

# create some simulated data
df <- data.frame(score = c(runif(5)), team = c(letters[1:5]), state = c(state.name[1:5]))

# sort by decending score, THEN sort by ascending team letter
df[with(df, order(-score, team)), ]



