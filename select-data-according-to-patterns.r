# Selecting Data According To Patterns

#Select all the cases where Baltimore's district name is "North"
bmore.crime$district[grep("NORTH", as.character(bmore.crime$district))] # 