# Sentiment Analysis
# largely based on: http://www.slideshare.net/jeffreybreen/r-by-example-mining-twitter-for
# uses the score.sentiment() found here: https://jeffreybreen.wordpress.com/tag/sentiment-analysis/

# create a score.sentiment function (kept original commenting since it is so good)
score.sentiment = function(sentences, pos.words, neg.words, .progress='none')
{
  require(plyr)
  require(stringr)
  
  # we got a vector of sentences. plyr will handle a list
  # or a vector as an "l" for us
  # we want a simple array ("a") of scores back, so we use
  # "l" + "a" + "ply" = "laply":
  scores = laply(sentences, function(sentence, pos.words, neg.words) {
    
    # clean up sentences with R's regex-driven global substitute, gsub():
    sentence = gsub('[[:punct:]]', '', sentence)
    sentence = gsub('[[:cntrl:]]', '', sentence)
    sentence = gsub('\\d+', '', sentence)
    # and convert to lower case:
    sentence = tolower(sentence)
    
    # split into words. str_split is in the stringr package
    word.list = str_split(sentence, '\\s+')
    # sometimes a list() is one level of hierarchy too much
    words = unlist(word.list)
    
    # compare our words to the dictionaries of positive & negative terms
    pos.matches = match(words, pos.words)
    neg.matches = match(words, neg.words)
    
    # match() returns the position of the matched term or NA
    # we just want a TRUE/FALSE:
    pos.matches = !is.na(pos.matches)
    neg.matches = !is.na(neg.matches)
    
    # and conveniently enough, TRUE/FALSE will be treated as 1/0 by sum():
    score = sum(pos.matches) - sum(neg.matches)
    
    return(score)
  }, pos.words, neg.words, .progress=.progress )
  
  scores.df = data.frame(score=scores, text=sentences)
  return(scores.df)
}

# load Hu and Lui 2004's list of positive words
pos.words <- scan("/Users/chrisralbon/cra/cra_projects/code_r/data/opinion-lexicon-English/positive-words.txt", what="character", comment.char=";")

# load Hu and Lui 2004's list of negative words
neg.words <- scan("/Users/chrisralbon/cra/cra_projects/code_r/data/opinion-lexicon-English/negative-words.txt", what="character", comment.char=";")

# create some simulated test data
test <- c("I really hate it when you die like that. You suck.", "I love love love you", "Go to hell")

# create a sentiment score for the test data
test.results <- score.sentiment(test, pos.words, neg.words); test.results