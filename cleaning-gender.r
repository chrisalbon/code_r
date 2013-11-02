# Cleaning Up Gender
# Original source: Learning R

# create some messy fake gender data
gender <- c("MALE", "Male", "male", "M", "FEMALE", "Female", "female", "f", NA)

# find strings that start with m and optionally ending in ale
clean_gender <- str_replace(
  gender,
  ignore.case("^m(ale)?$"),
  "Male"
)

# find strings the start with f and optionally end in emale
clean_gender <- str_replace(
  clean_gender,
  ignore.case("^f(emale)?$"),
  "Female"
)