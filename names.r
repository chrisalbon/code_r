# Extracting Information From Objects Using Names()
# original source: http://rforpublichealth.blogspot.com/2013/03/extracting-information-from-objects.html

# create some simulated data
ID <- 1:10
Age <- c(26, 65, 15, 7, 88, 43, 28, 66 ,45, 12)
Sex <- c(1, 0, 1, 1, 0 ,1, 1, 1, 0, 1)
Weight <- c(132, 122, 184, 145, 118, NA, 128, 154, 166, 164)
Height <- c(60, 63, 57, 59, 64, NA, 67, 65, NA, 60)
Married <- c(0, 0, 0, 0, 0, 0, 1, 1, 0, 1)

# create a dataframe of the simulated data
mydata <- data.frame(ID, Age, Sex, Weight, Height, Married)

# names() shows us everything stored under an object

# view everything under mydata
names(mydata)

# we can use names() to change a column header

# change the name of column 4 to Weight_lbs
names(mydata)[4]<-"Weight_lbs"

# run a regression
reg.object <- lm(Weight_lbs ~ Height + Age, data = mydata)

# display all the objects under the regression
names(reg.object)

# print the residuals of the regression
reg.object$residuals

# print a histogram of the residuals
hist(reg.object$residuals, main="Distribution of Residuals" ,xlab="Residuals")

