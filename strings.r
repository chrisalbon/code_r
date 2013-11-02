# Strings

## Strings are text data stored in character vectors.

## Paste function can "paste" text into string elements

# Create a character vector with three strings
meals <- c("cheeseburger", "soup", "sandwich")

# Paste "bacon" onto the end of each string element
bacon.meals <- paste(meals, "bacon")

bacon.meals.dash <- paste(meals, "bacon", sep="-"); bacon.meals.dash

# We can also collapse the whole vector into a single string
mouthful <- paste(meals, collapse=""); mouthful
