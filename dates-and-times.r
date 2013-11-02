# Dates And Times

## POSIXct and POSIXlt are two of three standard date-time classes in R. 

# POSIXct refers to "calendar time" and stores dates as the number of seconds since the start of 1970. This is best for storing and manipulating dates.

## take system time
now_ct <- Sys.time()

## examine the class
class(now_ct)

## see the raw data (notice the second count)
unclass(now_ct)

# POSIXlt stores data as a list with components for seconds, hours, dats, etc. This is best for extracting subparts of a date.

## convert to POSIXlt
now_lt <- as.POSIXlt(now_ct)

## examine the class
class(now_lt)

## see the raw data (notice the list)
unclass(now_lt)

# The third date class is Date, and stores the number of day since the start of 1970.

## convert to Date
now_date <- as.Date(now_lt)

## examine the class
class(now_date)

## see the raw data (notice the day count)
unclass(now_date)
 
