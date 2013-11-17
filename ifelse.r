# Using ifelse

# create some simulated data
ID <- 1:10
Age <- c(26, 65, 15, 7, 88, 43, 28, 66 ,45, 12)
Sex <- c(1, 0, 1, 1, 0 ,1, 1, 1, 0, 1)
Weight <- c(132, 122, 184, 145, 118, NA, 128, 154, 166, 164)
Height <- c(60, 63, 57, 59, 64, NA, 67, 65, NA, 60)
Married <- c(0, 0, 0, 0, 0, 0, 1, 1, 0, 1)

# create a dataframe of the simulated data
mydata <- data.frame(ID, Age, Sex, Weight, Height, Married)

# simple example

# create a new variable called Old that, if Age is greater than 40, is 1, else the value is 0
mydata$Old<-ifelse(mydata$Age>40,1,0)

# nested ifelse() allows us to have more than 1 ruleset

# create a new variable called Agegroup2. If Age is greater than 10 and less than 20, Agegroup 2 will have a value of 1. If not, it executes a new ifelse that if Age is over 20, codes the value as 2, else 0.
mydata$Agegroup2<-ifelse(mydata$Age>10 & mydata$Age<20,1,     
                         ifelse(mydata$Age>20, 2,0))

# create a new variable called Height.recode. if Height is missing, then 9999, else, keep Height's original value
mydata$Height.recode<-ifelse(is.na(mydata$Height),
                             9999, 
                             mydata$Height)

