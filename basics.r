# Title: The People's Data
# Contents: Full R Code
# Author: Chris R. Albon
# Contact: ChrisRAlbon.com

# The purpose of this document is to teach the basics of data analysis, using a single r-file that examines a single real-world dataset to answer a single question: "How dangerous is my neigbhorhood?"

# Getting Familiar With R

# R is fundamentally just a big calculator

# Arithmetic operators
1 + 1 # 1 plus 1
4 - 3 # 4 minus 3
14 / 10 # 14 divided by 10
10*5 # 10 multiplied by 5
3^2 # 3 squared
5%%2 # 5 mod 2
4%/%2 # 4 divided by 2 (integer division)

# We can also ask R logic questions

# Logical operators
2 < 4 # 2 is less than 4
2 <= 4 # 2 is less than or equal to 4
2 > 4 # 2 is greater than 4
3 >= 5 # 3 is greater than or equal to 5
5 == 5 # 5 is equal to 5
5 != 4 # 5 is not equal to 4
!2 # Not 2
2 | 4 # 2 or 4
4 & 5 # 3 and 5
isTRUE(4 + 4 == 8) # is "4 plus 4 equals 5" true?

# How R Handles Data

# In R, a collection of one or more values is called a vector. Think of vectors as a collection of numbers.

# We can create a vector by creating an object
my.age <- 29 # create an vector object called my.age that contains the value "29"
my.age # view the contents of our.ages
our.ages <- c(29, 29, 43, 4) # create a vector object called our.ages containing the values 29, 29, 43, and 4
our.ages # view the contents of our.ages

# Notice two things about these objects. First I am giving them very descriptive names. Second, I am seperating words with periods since spaces are not allowed in object names.

# We can even create objects from objects
number.of.us <- length(our.ages) # create a vector object called number.of.us whose value is the length of the our.ages vector
number.of.us # view the contents of number.of.us

# We can even tell R to create values for us
one.to.ten <- 1:10 # create an object called one.to.ten that contains the all integiers between one and ten

# We can also do a lot of different functions with vector objects
max(our.ages) # find the maximum value in our.ages
min(our.ages) # find the minimum value in our.ages
sum(our.ages) # find the sum of all values in our.ages
mean(our.ages) # find the mean of all values in our.ages
median(our.ages) # find the median of all values in our.ages
range(our.ages) # find the range of all values in our.ages
sort(our.ages) # sort values in our.ages in ascending order
rank(our.ages) # rank the values in our.ages
order(our.ages) # display the ascending order of the values in our.ages
quantile(our.ages) # display the minimum, lower quartile, median, upper quartile, and maxmimum of our.ages

