# Simple Random Sampling Of Rows

# create a dataframe with simulated values
x <- runif(1000)
y <- runif(1000)
z <- runif(1000)
a <- runif(1000)
df <- data.frame(x, y, z, a)

w <- runif(1000)

# sample 10 rows of the dataframe at pseudorandom, without replacement
sample <- df[sample(1:nrow(df), 10, replace = F),]

# sample 10 rows of the dataframe at pseudorandom, without replacement, with the selection of reach row weighted by w (note w doesn't need to add up to 1)
sample.weighted <- df[sample(1:nrow(df), 10, replace = F, prob = w),]
