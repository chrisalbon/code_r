# Getting A Sample Of Random Rows From A Dataframe
# original source: http://stackoverflow.com/questions/8273313/random-rows-in-dataframe-in-r

# create some simulated data
ID <- 1:10
Age <- c(26, 65, 15, 7, 88, 43, 28, 66 ,45, 12)
Sex <- c(1, 0, 1, 1, 0 ,1, 1, 1, 0, 1)
Weight <- c(132, 122, 184, 145, 118, NA, 128, 154, 166, 164)
Height <- c(60, 63, 57, 59, 64, NA, 67, 65, NA, 60)
Married <- c(0, 0, 0, 0, 0, 0, 1, 1, 0, 1)

# create a dataframe of the simulated data
df <- data.frame(ID, Age, Sex, Weight, Height, Married)

# create some simulated data
ID <- 1:10
Age <- c(26, 65, 15, 7, 88, 43, 28, 66 ,45, 12)
Sex <- c(1, 0, 1, 1, 0 ,1, 1, 1, 0, 1)
Weight <- c(132, 122, 184, 145, 118, NA, 128, 154, 166, 164)
Height <- c(60, 63, 57, 59, 64, NA, 67, 65, NA, 60)
Married <- c(0, 0, 0, 0, 0, 0, 1, 1, 0, 1)

# create a new object that is comprised of three rows of the dataframe df, taken as random. literally what it is doing is chosing three numbers at random out of the total number of rows in a dataframe, and use that as the row index to definite which rows are included.
df.sample <- df[sample(nrow(df), 3), ]
