# Manipulating Character Strings (i.e. text)

# R can handle a number of types of data, including numbers and text. In R, the text is refered to as character strings and is always wrapped in double quotation marks. In other words, if something is inside quotation marks, it is treated as text.

# R has a number of functions avaliable for manipulating text.

# Count the number of characters in each individual character string in an object

levels(bmore.crime$district) # display each district's name
nchar(levels(bmore.crime$district)) # display the number of characters in each district's name.

# You can also display text without quotes, although it is rare you would want to do so.

levels(bmore.crime$district) # display each police district's name
noquote(levels(bmore.crime$district)) # display each police district's name without quotes

# R can add characters to a vector of character strings using the paste function

paste(levels(bmore.crime$district), "DISTRICT") # Add "DISTRICT" to the name of each police district

# And without a space between the character strings
paste(levels(bmore.crime$district), "DISTRICT", sep="") # Add "DISTRICT" to the name of each police district

# Extracting Segments Of Character Strings using Substring Function

substr(bmore.crime$district, 1, 5) # Extract characters from district names, starting at the 1st character and ending at the 5th character
