# Subsetting Data
# original source: http://rforpublichealth.blogspot.com/2012/10/quick-and-easy-subsetting.html

# create some simulated data
ID <- 1:10
Age <- c(26, 65, 15, 7, 88, 43, 28, 66 ,45, 12)
Sex <- c(1, 0, 1, 1, 0 ,1, 1, 1, 0, 1)
Weight <- c(132, 122, 184, 145, 118, NA, 128, 154, 166, 164)
Height <- c(60, 63, 57, 59, 64, NA, 67, 65, NA, 60)
Married <- c(0, 0, 0, 0, 0, 0, 1, 1, 0, 1)

# create a dataframe of the simulated data
mydata <- data.frame(ID, Age, Sex, Weight, Height, Married)

# create a new variable called sub.data that is the subset of mydata, containing all rows where Age is less than 50 and sex is 0 and the columns ID, Age, and Weight
sub.data<-subset(mydata, Age>50 & Sex==0, select=c(ID, Age, Weight))
