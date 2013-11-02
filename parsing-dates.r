# Parsing Dates

# Often imported data will need to be parsed. If the dates are character strings, you can use strptime to parse the date-time.

# Import some moon landing day/times
moon_landings_str <- c(
  "20:17:40 20/07/1969",
  "06:54:35 19/11/1969",
  "09:18:11 05/02/1971",
  "22:16:29 30/07/1971",
  "02:23:35 21/04/1972",
  "19:54:57 11/12/1972"
)

# convert the date-time character strings into dates
moon_landings_lt <- strptime(
  moon_landings_str,
  "%H:%M:%S %d/%m/%Y",
  tz = "UTC")

