# Loops With Lists

# create list object of fake data
names <- c("John", "Jack", "John", "Jack", "Jack")
numbers <- c(3434, 4352, 3452, 3452, 2345)
numbers2 <- c(3434, 4352, 3452, 3452, 2345)
win <- c(T, F, T, F, T, F)
data.list <- list(names, numbers, win)
data.list.numbers <- list(numbers, numbers2)

# apply (via list apply) the unique() function to every element in the list
lapply(data.list, unique)

# vapply is like lapply, but it returns a vector

# apply (via list apply) the unique() function to every element in the list
vapply(data.list.numbers, unique, numeric(4))