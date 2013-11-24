# Adding Time To A Date

# load the lubridate package
library(lubridate)

# create a date variable
date.ex <- dmy("1/1/2001") 

# add 45 days to a date
date.ex.2 <- date.ex + days(45)

# add six weeks to a date
date.ex.3 <- date.ex + weeks(6)
