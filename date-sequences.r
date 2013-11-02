# Difference Between Two Date-Times

# Create two dates
start.time <- as.Date("1970-01-01")
end.time <- as.Date("2012-12-21")

# create an element for every year between two dates
seq(start.time, end.time, by = "1 year")