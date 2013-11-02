# Converting Continous Variables To Categorical Variables
# Original source: Learning R

# Generate some age data of 10000 soldiers between 16 and 66
age <- 16 + 50 * rbeta(10000, 2, 3)

# Use cut() to chunk up the observations into bins of 10 year block, the outcome is an ordered factor
grouped.ages <- ordered(cut(age, seq.int(16, 66, 10)))

# view a table of the results
table(grouped.ages)

# plot the results
plot(grouped.ages)