# Importing CSV and Delimited Data
# Original source: Learning R

# Flat Files Offline
testdata <- read.table("d:/data/mydata.dat", header=TRUE) # valid

# read.csv is like read.table but the default seperator and adds a header

# Flat File Online
testdata2 <- read.table("http://science.nature.nps.gov/im/monitor/stats/R/data/ MyData.csv", header=TRUE, sep=",")

# Specify . As Denoting A Missing Value
testdata <- read.table("mydata.csv", header=TRUE, sep=",", na.strings=".")