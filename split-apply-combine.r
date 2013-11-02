# Split, Apply, Combine
# Original source: Learning R

# generate fake data with multiple lines for a single observation
war.name <- c("WWII", "WWII", "WWI", "WWI", "Franco-Prussian", "Franco-Prussian", "Franco-Prussian", "Boer War", "Boer War", "Boer War")
deaths <- c(938, 9480, 2049, 1039, 3928, 9202, 10933, 40293, 10394, 20394)
casualties <- data.frame(war.name, deaths); casualties

# Using the split function we can calculate the average deaths for each war, even though they are split on different lines.

## split the deaths by war.name
casualties.by.war <- with(casualties, split(deaths, war.name))

## calculate the list mean war deaths for each war
list.of.means.by.war <- lapply(casualties.by.war, mean)

# convert the list into a vector
mean.by.war <- unlist(list.of.means.by.war)