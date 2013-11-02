# Difference Between Two Date-Times

# Create two dates
the_start_of_time <- as.Date("1970-01-01")
the_end_of_time <- as.Date("2012-12-21")

# calculate the difference in the two dates
difftime(the_end_of_time, the_start_of_time, units = "auto")

# calculate the difference in the two dates
difftime(the_end_of_time, the_start_of_time, units = "days")

# calculate the difference in the two dates
difftime(the_end_of_time, the_start_of_time, units = "weeks")

