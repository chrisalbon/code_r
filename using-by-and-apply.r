# Using by, apply

# The apply function is very simple and very powerful. It allows us to apply a function individually to each row, each column, or each value.

# Note: In the apply function, 1 denotes rows, 2 denotes columns, and 1:2 denotes values.

random.data <- matrix(c(sample(10), sample(10)), nrow = 10, ncol = 2) # create a data frame with some random values 
apply(random.data, 1, sum) # get the sum of each individual row
apply(random.data, 2, sum) # get the sum of each individual column
apply(random.data, 1, function(x) x * 5) # multiply each individual value by 5

# When we want break up applying a function by levels in a factor (i.e. by individual categories), we can use the if() function

# Imagine we want to know the total number of crimes that happened in each district in Baltimore. This is easier said than done because of the structure of the data. 

head(bmore.crime)

# As you can see, in the dataset crime totals are divided up by district, type, and month. Meaning that to find the district crime totals, we'd have to add up almost one hundred lines for each district! With if(), we can do this using a single line of code.

by(bmore.crime$numberCrimes, bmore.crime$district, sum) # by district, get the total (sum) number of arrests (numberCrimes)

# We can get the same results by using the tapply() function

tapply(bmore.crime$numberCrimes, bmore.crime$district, sum) # total number of arrests, by district
