# Truncate A String
# Source: http://www.r-bloggers.com/truncate-by-delimiter-in-r/

# create some simulated data
patients <- data.frame(
  uid = 1:3,
  fullname = c("Smith/John", "Jackson/Smith", "Joel/Billy"))

patients$lastname <- sub("/.*", "", patients$fullname); patients$lastname
