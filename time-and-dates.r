# Time and Dates in R
# original source: http://rforpublichealth.blogspot.com/2013/07/lets-make-date-date-and-time-classes-in.html

# create some simulated date data
dates<-as.data.frame(cbind(
  c(1,3,6,11,4,12,5,3), 
  c(30,14,NA,NA,16,NA,20,31), 
  c(1980, 1980, 1980, 1983,1983, 1983, 1986, 1980), 
  c(2, NA, NA, NA, NA, 12, 4, NA), 
  c(2, NA, NA, NA, NA, NA, 29, NA), 
  c(1980, NA, NA, 1985, NA, 1983, 1987, NA)))

# add column names to the data frame
colnames(dates)<-c("birth_month", "birth_day", "birth_year", "death_month", "death_day", "death_year")

# dates can be easily manipulated if they are converted into ISO format

# ISO format uses the function: ISOdate(year, month, day, hour = 12, min = 0, sec = 0, tz = “GMT”)

# create a new variable called DOB that converts the birth date data into ISO
dates$DOB <- ISOdate(dates$birth_year, dates$birth_month, dates$birth_day)

# ISOdate includes time by default, we can strip time from the DOB data using strptime()
dates$DOB <- strptime(dates$DOB, format = "%Y-%m-%d")

# create date of death data combining the two commands we ran above
dates$DOD <- strptime(ISOdate(dates$death_year, dates$death_month, dates$death_day), format = "%Y-%m-%d")

# we can use the difftime() function to calculate the difference in two dates/times

# the format of difftime() is: 
# difftime(time1, time2, tz,units = c(“auto”, “secs”, “mins”, “hours”,“days”, “weeks”))

# create a variable that is the difference between the birth and death date, ie their age (in days)
dates$Age.atdeath <- difftime(dates$DOD, dates$DOB, unit = "days")

# check if there were an infant mortalities
dates$Age.atdeath < 365

# clever trick: if day/time data is missing, you can set the missing date/time data to fixed numbers. Comments inline.

# create a variable DOB2, strip the time off
dates$DOB2<-strptime(
  # convert the data into ISO format
  ISOdate(year=dates$birth_year, 
          # if month observation is missing, set month to 1, else set it to birth month
          month=ifelse(is.na(dates$birth_month), 1, dates$birth_month), 
          # if day observation is missing, set day to 1, else set it to birth day
          day=ifelse(is.na(dates$birth_day),1, dates$birth_day)),
          # format to display the date
          format="%Y-%m-%d")

# create a variable DOD2, strip the time off
dates$DOD2<-strptime(
  # convert the data into ISO format
  ISOdate(year=dates$death_year,
          # if month observation is missing, set month to 1, else set it to death month
          month=ifelse(is.na(dates$death_month),12,dates$death_month), 
          # if day observation is missing, set day to 1, else set it to death day
          day=ifelse(is.na(dates$death_day),30, dates$death_day)), 
          # format to display the date
          format="%Y-%m-%d")

# create a new variable that converts the differnce in time to numeric
dates$Ageatdeath_2<-as.numeric(
  difftime(dates$DOD2,dates$DOB2,unit="days"))

# view columns 1 through 6, and 10 through 12
dates[,c(1:6,10:12)]
