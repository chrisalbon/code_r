# Basic ggplot2 examples
# original source: https://github.com/patilv/3graphs/blob/master/ggplot2Page/index.md

# make sure the graphic displays in RStudio by turning off external devices
dev.cur()
dev.off()

## Create some simulated data

## create three factor variables of length 50.
FacVar1 = as.factor(rep(c("level1", "level2"), 25))
FacVar2 = as.factor(rep(c("levelA", "levelB", "levelC"), 17)[-51])
FacVar3 = as.factor(rep(c("levelI", "levelII", "levelIII", "levelIV"), 13)[-c(51:52)])

## create four numeric variables frpm different distributions

## normal distribution
set.seed(123)
NumVar1 = round(rnorm(n = 50, mean = 1000, sd = 50), digits = 2)  
set.seed(123)

## uniform distribution
NumVar2 = round(runif(n = 50, min = 500, max = 1500), digits = 2)

## exponential distribution
set.seed(123)
NumVar3 = round(rexp(n = 50, rate = 0.001))

## sequence
NumVar4 = 2001:2050

## merge all the variables in a dataframe
simData = data.frame(FacVar1, FacVar2, FacVar3, NumVar1, NumVar2, NumVar3, NumVar4)

## load required packages
library(ggplot2)
library(reshape2)

# one variable plots

# create a plot of NumVar1's values and their row number
ggplot(simData, aes(y = NumVar1, x = 1:nrow(simData), group = "NumVar1")) + geom_point() + geom_line() + xlab("")

# create a histogram of NumVar1
ggplot(simData, aes(x = NumVar1)) + geom_histogram()

# create a density plot of NumVar1
ggplot(simData, aes(x = NumVar1)) + geom_density()

# create a boxplot of NumVar1
ggplot(simData, aes(x = factor(""), y = NumVar1)) + geom_boxplot() + xlab("")

# create a barplot of FacVar3
ggplot(simData, aes(x = FacVar3)) + geom_bar()

# create a scatterplot of NumVar1 and NumVar 2
ggplot(simData, aes(x = NumVar1, y = NumVar2)) + geom_point()

# create a crosstab of FacVar2 and FacVar3 to get the Freq data
bartabledat = as.data.frame(table(simData$FacVar2, simData$FacVar3))

# create a barplot of Var2's frequency, colored by Var1
ggplot(bartabledat, aes(x = Var2, y = Freq, fill = Var1)) + geom_bar(position = "dodge")

# create a stacked barplot of var2's frequency, colored by Var1
ggplot(bartabledat, aes(x = Var2, y = Freq, fill = Var1)) + geom_bar()

# create a proportion table of each combo's propotion of the total
bartableprop = as.data.frame(prop.table(table(simData$FacVar2, simData$FacVar3), 2) * 100)

# create a bar plot of each combination's proportion of the total
ggplot(bartableprop, aes(x = Var2, y = Freq, fill = Var1)) + geom_bar()

# create a scatterplot, with each dot colored by a third variable
ggplot(simData, aes(x = NumVar1, y = NumVar2, color = FacVar1)) + geom_point()

# create a scatterplot with each dot sized by a third variable
ggplot(simData, aes(x = NumVar1, y = NumVar2, size = NumVar3)) + geom_point()

# Turn off external devices
dev.off()