# Cleaning Strings
# Original source: Learning R

# R includes grep, grepl, regexpr, sub, and gsub to handle strings. However they can be clunky, so the stringr package provides a "UI" for these functions to making working with them easier.

# Load LearningR package
library(learningr)

# Load english_monarchs data from the LearningR package
data(english_monarchs, package = "learningr")

# Load Stringr Library
library(stringr)

# detect commas in the domain variable, meaning that during that time a monarch had multiple territories (domains)
multiple_kingdoms <- str_detect(english_monarchs$domain, fixed(",")); multiple_kingdoms

# index domains where multiple_kingdoms is true. Show name and domain columns for those rows where it is true. 
english_monarchs[multiple_kingdoms, c("name", "domain")]

# detect either a comma or an "and" in the ruler variable, meaning that a domain had multiple rulers
multiple_rulers <- str_detect(english_monarchs$name, ",|and")

# index domains where multiple rulers was true and that data isn't missing
english_monarchs$name[multiple_rulers & !is.na(multiple_rulers)]

# since individual rulers are split up by a comma or an and, we can split them up. The output is a list.
individual_rulers <- str_split(english_monarchs$name, ", | and ")

# take a look at the data
head(individual_rulers[sapply(individual_rulers, length) > 1])