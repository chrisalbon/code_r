# Using apply, sapply, and lapply
# Original source: http://www.r-bloggers.com/using-apply-sapply-lapply-in-r/

## Create some data
data <- matrix(data=cbind(rnorm(100, 0), rnorm(100, 25), rnorm(100, 50)), nrow=100, ncol=3)

## Apply

### The apply function performs some action on a block of values. Note, all the values must be of the same data type (e.g. numeric, string, etc.). If they contain both numeric and string, the numeric values will be converted into strings before the function is applied.

### Find mean value of each row (denoted by "1")
apply(data, 1, mean)

### Find mean value of each column (denoted by "2")
apply(data, 2, mean)

#### Find mean of reach additional value. That is, apply the mean() functions to each individual observation instead of entire rows or entire columns (denoted by "1:2")
apply(data, 1:2, mean)

## Sapply

### Sapply applies a function over each individual element in an object, returning a vector
sapply(data, mean)

## Lapply

### Lapply applies a function of each individual element in an object, returning a list

### Create a list with two elements
l <- list(a = 1:10, b = 11:20)

### Apply the sum function to each list
lapply(l, sum)