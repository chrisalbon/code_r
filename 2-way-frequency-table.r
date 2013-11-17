# Two Way Frequency Table
# Original source: http://www.statmethods.net/stats/frequencies.html

A <- c("yes", "no","yes", "no","yes", "no","yes", "no")
B <- c("male", "female","female", "male","male", "male","male", "male")

mytable <- table(A,B) # A will be rows, B will be columns
mytable # print table

margin.table(mytable, 1) # A frequencies (summed over B)
margin.table(mytable, 2) # B frequencies (summed over A)

prop.table(mytable) # cell percentages
prop.table(mytable, 1) # row percentages
prop.table(mytable, 2) # column percentages 