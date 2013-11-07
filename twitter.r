# Plot Of Twitter User Hashtag Count
# Original source: http://decisionsandr.blogspot.com/2013/11/using-r-to-find-obamas-most-frequent.html

# Note: This r code will have to be run in two parts since you will have to get a code from the Twitter website and enter it into R manually.

# Load twitteR package
library(twitteR)

# create object of request token URL
reqURL <- "https://api.twitter.com/oauth/request_token"

# create object of access URL
accessURL <- "http://api.twitter.com/oauth/access_token"

# create object of authorization URL
authURL <- "http://api.twitter.com/oauth/authorize"

# create objects with keys (get these from dev.twitter.com)
consumerKey <- "XXXXX"
consumerSecret <- "XXXXX"

# add them to twitcred
twitCred <- OAuthFactory$new(consumerKey=consumerKey,consumerSecret=consumerSecret,requestURL=reqURL,accessURL=accessURL,authURL=authURL)

# Prepare for the hangshake
download.file(url="http://curl.haxx.se/ca/cacert.pem", destfile="cacert.pem")

# conduct the handshake, then enter in the number code
twitCred$handshake(cainfo="cacert.pem")

# -------------
# Enter number from browser into R
# -------------

# test to make sure it works
registerTwitterOAuth(twitCred)

# create object of 3200 tweets in ChrisAlbon's timeline
tw <- userTimeline("ChrisAlbon", n = 3200)

# create a object that is a data frame of tw
tw <- twListToDF(tw)

# create an object of the tweet texts
vec1 <- tw$text

# create an object that extract the hashtags
extract.hashes <- function(vec){
  hash.pattern = "#[[:alpha:]]+"
  have.hash = grep(x = vec, pattern = hash.pattern)
  hash.matches = gregexpr(pattern = hash.pattern, text = vec[have.hash])
  extracted.hash = regmatches(x = vec[have.hash], m = hash.matches)
  df = data.frame(table(tolower(unlist(extracted.hash))))
  colnames(df) = c("tag","freq")
  df = df[order(df$freq,decreasing = TRUE),]
  return(df)
}

# create object of 50 of vec1's hashtags
dat = head(extract.hashes(vec1),50)

# create object the hashtags ordered by frequency
dat2 = transform(dat,tag = reorder(tag,freq))

# load the ggplot2 package
library(ggplot2)

# plot the hashtags by frequency
p = ggplot(dat2, aes(x = tag, y = freq)) + geom_bar(fill = "blue")

# redo it a bit and add a title
p + coord_flip() + labs(title = "Hashtag frequencies in the tweets of ChrisAlbon)