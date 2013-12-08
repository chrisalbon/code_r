# Download And Unzip Data

# download a zip file containing broadband data, save it to the working directory
download.file("http://www2.ntia.doc.gov/files/broadband-data/AK-NBM-CSV-Dec-2012.zip", destfile="AK-NBM-CSV-Dec-2012.zip")

# unzip the file
unzip("AK-NBM-CSV-Dec-2012.zip")

# unzip the file inside the zip file
unzip("AK-NBM-WIRELESS-CSV-Dec-2012.zip")

# read the data into R, with "|" seperating values
data <- read.delim("AK-NBM-Wireless-CSV-DEC-2012.TXT", sep = "|")
