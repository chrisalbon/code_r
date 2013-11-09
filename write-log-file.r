# Write Log File
# Original source: http://stackoverflow.com/questions/2470248/write-lines-of-text-to-a-file-in-r

# open the log file
log.file <- file("log.txt")

# write a string to log.file
writeLines("No errors were detected."), log.file)

# close log file
close(log.file)
