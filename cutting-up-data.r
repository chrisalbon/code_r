# Cutting Up Data
# original source: http://rforpublichealth.blogspot.com

# create some simulated data
ID <- 1:10
Age <- c(26, 65, 15, 7, 88, 43, 28, 66 ,45, 12)
Sex <- c(1, 0, 1, 1, 0 ,1, 1, 1, 0, 1)
Weight <- c(132, 122, 184, 145, 118, NA, 128, 154, 166, 164)
Height <- c(60, 63, 57, 59, 64, NA, 67, 65, NA, 60)
Married <- c(0, 0, 0, 0, 0, 0, 1, 1, 0, 1)

# create a dataframe of the simulated data
mydata <- data.frame(ID, Age, Sex, Weight, Height, Married)

# cut up Age by 0-5, 6-10, 11-15, 16-20 and label each category 1-6.
mydata$Agecat1<-cut(mydata$Age, c(0,5,10,15,20,25,30), labels=c(1:6))

# it is a factor
class(mydata$Agecat1)
