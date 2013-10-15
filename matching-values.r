# Matching Values

# The match() asks R: where do the values of y appear in x?

x <- c("a","b","c","d","e") # create x that contains the values a through e
y <- c("a","d","e") # create y that contains a, d, e
match(x,y) # where do the values of y (a,d,e) appear in x (a,b,c,d,e)?

# Look closely at the output because it can be confusing. The "1" means that y's first value, "a" matches x's first value. The "2" says that y's 2nd value "d" matches x's 4th value, "d".

# We can also ask R a more simple question: Does a x appear in y?

"WESTERN" %in% levels(bmore.crime$district) # Does the string "WESTERN" appear in the Baltimore police district names
