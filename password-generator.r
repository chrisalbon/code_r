# Password Generator
# Credit to: http://ryouready.wordpress.com/2008/12/18/generate-random-string-name/
# Credit to: http://stats.stackexchange.com/questions/7900/generate-random-strings-based-on-regular-expressions-in-r

# enter the url here:
url <- "http://chrisralbon.com"

# password generating function
password <- function(x)
{
  length=nchar(x) - sample(1:10, 5) # take length of url minus a random five digit number
  random.string <- c(1:1) # create a atomic vector of length 1
  for (i in 1:1)
  {
    random.string[i] <- paste(sample(c(0:9, letters, LETTERS), length, replace=TRUE), collapse="") # for that vector add random upper and lower case numbers, with replacement of length "length"
  }
  return(random.string) # display the created string
}

# generate the password
password(url)
