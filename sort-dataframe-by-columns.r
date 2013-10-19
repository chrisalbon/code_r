# Sorting A Data Frame By A Single Column
# Original source: http://onertipaday.blogspot.com/2007/08/sortingordering-dataframe-according.html

# Create three vectors of data
x = rnorm(20)
y = sample(rep(1:2, each = 10))
z = sample(rep(1:4, 5))

# Create a dataframe containing those vectors
data.df <- data.frame(x, y, z)

# Sort the entire dataframe by column y, then by column z 
sort.by <- c("y", "z")
data.df.sorted = data.df[do.call(order, data.df[sort.by]), ]

# View the sorted data frame
print(data.df.sorted)