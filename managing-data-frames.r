# Managing Data Frames

# Load LearningR package
library(learningr)

# Load english_monarchs data from the LearningR package
data(english_monarchs, package = "learningr")

# Altering A Single Column

# Create a new column from the differece between two date columns
english_monarchs$length.of.reign.years <- with(
  english_monarchs,
  end.of.reign - start.of.reign
)

# Altering Multiple Columns

## Within the english_monarchs dataframe, create two new columns
english_monarchs <- within(
  english_monarchs,
{
  length.of.reign.years <- end.of.reign - start.of.reign
  reign.was.more.than.30.years <- length.of.reign.years > 30
}
)