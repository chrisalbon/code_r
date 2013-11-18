# Manipulating Character Strings (i.e. text)

# R can handle a number of types of data, including numbers and text. In R, the text is refered to as character strings and is always wrapped in double quotation marks. In other words, if something is inside quotation marks, it is treated as text.

# R has a number of functions avaliable for manipulating text.

# create simulated district crime name
district <- factor(c("NORTH", "NORTHWEST", "CENTRAL", "SOUTH", "SOUTHWEST", "WESTERN"))

# Count the number of characters in each individual character string in an object

# display each district's name
levels(district) 

# display the number of characters in each district's name
nchar(district)) 

# You can also display text without quotes, although it is rare you would want to do so.

# display each police district's name
levels(district) 

# display each police district's name without quotes
noquote(levels(district)) 

# R can add characters to a vector of character strings using the paste function

# Add "DISTRICT" to the name of each police district
paste(levels(district), "DISTRICT") 

# And without a space between the character strings

# Add "DISTRICT" to the name of each police district
paste(levels($district), "DISTRICT", sep="") 

# Extracting Segments Of Character Strings using Substring Function

# Extract characters from district names, starting at the 1st character and ending at the 5th character
substr(district, 1, 5) 
