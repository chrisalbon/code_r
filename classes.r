# Classes

# All variables have a class. Variables also have modes and storage types, but those are legacy and don't worry about them.

# Find a variable's class
class(TRUE)

# R has three classes of numbers

# Numeric
class(sqrt(3))

# Complex
class(3i)

# Integer (add L to make a number an integer)
class(3L)

# Integer
class(3:33)

# R Also Has Other Classes

# Characters (Strings, like text)
class(c("Arizona", "Maryland"))

# Factors (like unordered categories)
class(factor(c("male", "female")))

# Factors have both values (i.e. a label) and a level (i.e. a numeric ID number)
gender <- factor(c("male", "female"))

# View the values
levels(gender)

# View the number of levels
nlevels(gender)

# View the levels of each element of a factor
as.integer(gender)

# View the values of a factor as character strings
as.character(gender)