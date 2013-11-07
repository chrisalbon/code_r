# Renaming Filenames

# create a variable with the directory of the files we want to rename
loc.dir <- paste(getwd(), "/test", sep=""); loc.dir

# create a list of files in the directory
refs <- list.files(path=loc.dir, all.files=TRUE, recursive=TRUE, full.names=TRUE); refs

# create a vector with the numbers we will add to the file names
numbers <- 1:length(refs); numbers

# rename the files in "refs" to albon-*.txt, wherein * is the digits in the variable "numbers"
file.rename(refs, paste0(loc.dir, "/", "albon-", numbers, ".txt"))


