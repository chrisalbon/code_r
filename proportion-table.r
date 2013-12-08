# Proporton Table
# Original source: The R Book

# create a matrix of simulated count data
counts <- matrix(sample(1:100, 20, replace=T), nrow=4); counts

# calculate each cell's proportion of the entire row's total counts
prop.table(counts,1)

# calculate each cell's proportion of the entire columns's total counts
prop.table(counts,2)
