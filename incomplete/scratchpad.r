# Scratch (For Testing)

# Removing NULL Values From A Vector

numbers.data <- as.character(c(1, 2, 3, NULL, 5)); numbers.data
letters.data <- c(letters[1:5])


numbers.str <- as.character(numbers.data); numbers.str
numbers.str <- replace(numbers.str, "NULL", NA); numbers.str


data <- data.frame(numbers.data, letters.data)
letters.data[complete.cases(numbers.data)]
numbers.data[complete.cases(numbers.data)]



