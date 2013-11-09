# Inner, Outer, Right, And Left Joins
# Additional explaination: http://www.codinghorror.com/blog/2007/10/a-visual-explanation-of-sql-joins.html
# Original source: http://stackoverflow.com/questions/1299871/how-to-join-data-frames-in-r-inner-outer-left-right

# create two dataframes are fake data
survey.1 <- data.frame(response.id = c(1:6), region = c(rep("Kisumu",3),rep("Mumbasa",3)))
survey.2 <- data.frame(response.id = c(2,4,6), region = c(rep("Nairobi",2),rep("Tankana",1)))

# Inner Join Only Merges Observations Shared By Both Data Frames

# merge survey.1 and survey.2 by response.id
merge(survey.1, survey.2, by="response.id")

# Outer Join Includes Merges All Observations, Leaving A NULL Observation When There Is No Match

# merge survey.1 and survey.2 by response.id, but include observations that don't match
merge(x = survey.1, y = survey.2, by = "response.id", all = TRUE)

# Left Join Includes All Observations From The First Dataframe But Only Matching Observations From The Second Dataframe

# merge survey.1 and survey.2 by response.id, but include survey.1 observations
merge(x = survey.1, y = survey.2, by = "response.id", all.x=TRUE)

# Left Join Includes All Observations From The Second Dataframe But Only Matching Observations From The First Dataframe

# merge survey.1 and survey.2 by response.id, but include survey.2 observations
merge(x = survey.1, y = survey.2, by = "response.id", all.y=TRUE)

