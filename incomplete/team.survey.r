data <- read.csv("/Users/chrisralbon/Dropbox/team.survey/data.csv")

library(stringr)
library(wordcloud)
library(tm)
library(ggplot2)

ggplot(data, aes(x = region)) + geom_histogram() + xlab("In which part of the world do you work?")  

ggplot(data, aes(x = workalone)) + geom_histogram() + xlab("Do you usually work alone or co-work with other humans?")  

ggplot(data, aes(x = travel)) + geom_histogram() + xlab("Do you travel for work more than once per month?")  

ggplot(data, aes(x = meetings)) + geom_histogram() + xlab("do you have regular meetings with other people on the team?")  

wordcloud(data$commqual, scale=c(5,0.5), max.words=100, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2"))

skype.t <- str_detect(data$tools, fixed("Skype"))
skype.t.n <- length(skype.t[skype.t==TRUE])

email.t <- str_detect(data$tools, fixed("Email"))
email.t.n <- length(email.t[email.t==TRUE])

phone.t <- str_detect(data$tools, fixed("Phone Calls"))
phone.t.n <- length(phone.t[phone.t==TRUE])

github.t <- str_detect(data$tools, fixed("GitHub"))
github.t.n <- length(github.t[github.t==TRUE])

team.page.t <- str_detect(data$tools, fixed("Team Page"))
team.page.t.n <- length(team.page.t[team.page.t==TRUE])

face.2.face.t <- str_detect(data$tools, fixed("Face to face"))
face.2.face.t.n <- length(face.2.face.t[face.2.face.t==TRUE])

basecamp.t <- str_detect(data$tools, fixed("Basecamp"))
basecamp.t.n <- length(basecamp.t[basecamp.t==TRUE])

sqwiggle.t <- str_detect(data$tools, fixed("Sqwiggle"))
sqwiggle.t.n <- length(sqwiggle.t[sqwiggle.t==TRUE])

twitterDM.t <- str_detect(data$tools, fixed("Twitter Direct Messages"))
twitterDM.t.n <- length(twitterDM.t[twitterDM.t==TRUE])

whatsapp.t <- str_detect(data$tools, fixed("Whatsapp Group"))
whatsapp.t.n <- length(whatsapp.t[whatsapp.t==TRUE])

wiki.t <- str_detect(data$tools, fixed("Team Wiki"))
wiki.t.n <- length(wiki.t[wiki.t==TRUE])





skype <- str_detect(data$most.effective, fixed("Skype"))
skype.n <- length(skype[skype==TRUE])

email <- str_detect(data$most.effective, fixed("Email"))
email.n <- length(email[email==TRUE])

phone <- str_detect(data$most.effective, fixed("Phone Calls"))
phone.n <- length(phone[phone==TRUE])

github <- str_detect(data$most.effective, fixed("GitHub"))
github.n <- length(github[github==TRUE])

team.page <- str_detect(data$most.effective, fixed("Team Page"))
team.page.n <- length(team.page[team.page==TRUE])

face.2.face <- str_detect(data$most.effective, fixed("Face to face"))
face.2.face.n <- length(face.2.face[face.2.face==TRUE])

basecamp <- str_detect(data$most.effective, fixed("Basecamp"))
basecamp.n <- length(basecamp[basecamp==TRUE])

sqwiggle <- str_detect(data$most.effective, fixed("Sqwiggle"))
sqwiggle.n <- length(sqwiggle[sqwiggle==TRUE])

twitterDM <- str_detect(data$most.effective, fixed("Twitter Direct Messages"))
twitterDM.n <- length(twitterDM[twitterDM==TRUE])

# Pie Chart
# Original source: http://www.statmethods.net/graphs/pie.html

# Create some casualty numbers
slices <- c(skype.n, email.n, phone.n, github.n, face.2.face.n, basecamp.n, sqwiggle.n, twitterDM.n)
slices.t <- c(skype.t.n, email.t.n, phone.t.n, github.t.n, face.2.face.t.n, basecamp.t.n, sqwiggle.t.n, twitterDM.t.n, whatsapp.t.n, wiki.t.n)


# Create labels that correspond to the casualty numbers
lbls <- c("Skype", "Email", "Phone", "Github", "Face to Face", "Basecamp", "Sqwiggle", "Twitter DM")
lbls.t <- c("Skype", "Email", "Phone", "Github", "Face to Face", "Basecamp", "Sqwiggle", "Twitter DM" , "WhatsApp" , "Team Wiki")

# Create Percents For Each Slice
pct <- round(slices/sum(slices)*100)
pct.t <- round(slices.t/sum(slices.t)*100)

# Create a pie chart with labels, with each slice colored by the terrain color pallete
par(mfrow=c(2,1))
pie(slices.t,labels = lbls.t, col=terrain.colors(length(lbls.t)), main="Tools Do You Use The Most?") 
pie(slices,labels = lbls, col=terrain.colors(length(lbls)), main="Which Tools Are Most Useful?") 




library(ggplot2)
library(gridExtra)


# Create test data.
dat = data.frame(count=slices, category=lbls)
dat.t = data.frame(count=slices.t, category=lbls.t)

# Add addition columns, needed for drawing with geom_rect.
dat$fraction = dat$count / sum(dat$count);dat$fraction
dat = dat[order(dat$fraction), ]; dat
dat$ymax = cumsum(dat$fraction); dat$ymax
dat$ymin = c(0, head(dat$ymax, n=-1)); dat$ymin

# Add addition columns, needed for drawing with geom_rect.
dat.t$fraction = dat.t$count / sum(dat.t$count); dat.t$fraction
dat.t = dat.t[order(dat.t$fraction), ]; dat.t
dat.t$ymax = cumsum(dat.t$fraction); dat.t$ymax
dat.t$ymin = c(0, head(dat.t$ymax, n=-1));dat.t$ymin

  

dev.off()

whatsapp <- rep(FALSE, 10)
wiki <- rep(FALSE, 10)

amount <- c(skype, email, phone, github, face.2.face, basecamp, sqwiggle, twitterDM, whatsapp, wiki)
amount.t <- c(skype.t, email.t, phone.t, github.t, face.2.face.t, basecamp.t, sqwiggle.t, twitterDM.t, whatsapp.t, wiki.t)

# #############

skype.t <- str_detect(data$tools, fixed("Skype"))
skype.t.n <- length(skype.t[skype.t==TRUE])

email.t <- str_detect(data$tools, fixed("Email"))
email.t.n <- length(email.t[email.t==TRUE])

phone.t <- str_detect(data$tools, fixed("Phone Calls"))
phone.t.n <- length(phone.t[phone.t==TRUE])

github.t <- str_detect(data$tools, fixed("GitHub"))
github.t.n <- length(github.t[github.t==TRUE])

team.page.t <- str_detect(data$tools, fixed("Team Page"))
team.page.t.n <- length(team.page.t[team.page.t==TRUE])

face.2.face.t <- str_detect(data$tools, fixed("Face to face"))
face.2.face.t.n <- length(face.2.face.t[face.2.face.t==TRUE])

basecamp.t <- str_detect(data$tools, fixed("Basecamp"))
basecamp.t.n <- length(basecamp.t[basecamp.t==TRUE])

sqwiggle.t <- str_detect(data$tools, fixed("Sqwiggle"))
sqwiggle.t.n <- length(sqwiggle.t[sqwiggle.t==TRUE])

twitterDM.t <- str_detect(data$tools, fixed("Twitter Direct Messages"))
twitterDM.t.n <- length(twitterDM.t[twitterDM.t==TRUE])

whatsapp.t <- str_detect(data$tools, fixed("Whatsapp Group"))
whatsapp.t.n <- length(whatsapp.t[whatsapp.t==TRUE])

wiki.t <- str_detect(data$tools, fixed("Team Wiki"))
wiki.t.n <- length(wiki.t[wiki.t==TRUE])

skype <- str_detect(data$most.effective, fixed("Skype"))
skype.n <- length(skype[skype==TRUE])

email <- str_detect(data$most.effective, fixed("Email"))
email.n <- length(email[email==TRUE])

phone <- str_detect(data$most.effective, fixed("Phone Calls"))
phone.n <- length(phone[phone==TRUE])

github <- str_detect(data$most.effective, fixed("GitHub"))
github.n <- length(github[github==TRUE])

team.page <- str_detect(data$most.effective, fixed("Team Page"))
team.page.n <- length(team.page[team.page==TRUE])

face.2.face <- str_detect(data$most.effective, fixed("Face to face"))
face.2.face.n <- length(face.2.face[face.2.face==TRUE])

basecamp <- str_detect(data$most.effective, fixed("Basecamp"))
basecamp.n <- length(basecamp[basecamp==TRUE])

sqwiggle <- str_detect(data$most.effective, fixed("Sqwiggle"))
sqwiggle.n <- length(sqwiggle[sqwiggle==TRUE])

twitterDM <- str_detect(data$most.effective, fixed("Twitter Direct Messages"))
twitterDM.n <- length(twitterDM[twitterDM==TRUE])

whatsapp <- rep(FALSE, 16)
wiki <- rep(FALSE, 16)




use.skype <- factor(ifelse(skype == TRUE, use.skype <- "Yes", use.skype <- "No")); use.skype
like.skype <- factor(ifelse(skype.t == TRUE, like.skype <- "Yes", like.skype <- "No")); like.skype

use.email <- factor(ifelse(email == TRUE, use.email <- "Yes", use.email <- "No")); use.email
like.email <- factor(ifelse(email.t == TRUE, like.email <- "Yes", like.email <- "No")); like.email

use.phone <- factor(ifelse(phone == TRUE, use.phone <- "Yes", use.phone <- "No")); use.phone
like.phone <- factor(ifelse(phone.t == TRUE, like.phone <- "Yes", like.phone <- "No")); like.phone

use.github <- factor(ifelse(github == TRUE, use.github <- "Yes", use.github <- "No")); use.github
like.github <- factor(ifelse(github.t == TRUE, like.github <- "Yes", like.github <- "No")); like.github

use.team.page <- factor(ifelse(team.page == TRUE, use.team.page <- "Yes", use.team.page <- "No")); use.team.page
like.team.page <- factor(ifelse(team.page.t == TRUE, like.team.page <- "Yes", like.team.page <- "No")); like.team.page

use.face.2.face <- factor(ifelse(face.2.face == TRUE, use.face.2.face <- "Yes", use.face.2.face <- "No")); use.face.2.face
like.face.2.face <- factor(ifelse(face.2.face.t == TRUE, like.face.2.face <- "Yes", like.face.2.face <- "No")); like.face.2.face

use.basecamp<- factor(ifelse(basecamp == TRUE, use.basecamp<- "Yes", use.basecamp <- "No")); use.basecamp
like.basecamp <- factor(ifelse(basecamp.t == TRUE, like.basecamp <- "Yes", like.basecamp <- "No")); like.basecamp

use.sqwiggle <- factor(ifelse(sqwiggle == TRUE, use.sqwiggle <- "Yes", use.sqwiggle <- "No")); use.sqwiggle
like.sqwiggle <- factor(ifelse(sqwiggle.t == TRUE, like.sqwiggle <- "Yes", like.sqwiggle <- "No")); like.sqwiggle

use.twitterDM <- factor(ifelse(twitterDM == TRUE, use.twitterDM <- "Yes", use.twitterDM <- "No")); use.twitterDM
like.twitterDM <- factor(ifelse(twitterDM.t == TRUE, like.twitterDM <- "Yes", like.twitterDM <- "No")); like.twitterDM

use.whatsapp <- factor(ifelse(whatsapp == TRUE, use.whatsapp <- "Yes", use.whatsapp <- "No")); use.whatsapp
like.whatsapp <- factor(ifelse(whatsapp.t == TRUE, like.whatsapp <- "Yes", like.whatsapp <- "No")); like.whatsapp

use.wiki <- factor(ifelse(wiki == TRUE, use.wiki <- "Yes", use.wiki <- "No")); use.wiki
like.wiki <- factor(ifelse(wiki.t == TRUE, like.wiki <- "Yes", like.wiki <- "No")); like.wiki

# create a crosstab of FacVar2 and FacVar3 to get the Freq data
skype.vs = as.data.frame(table(use.skype, like.skype))
email.vs = as.data.frame(table(use.email, like.email))
phone.vs = as.data.frame(table(use.phone, like.phone))
github.vs = as.data.frame(table(use.github, like.github))
team.page.vs = as.data.frame(table(use.team.page, like.team.page))
face.2.face.vs = as.data.frame(table(use.face.2.face, like.face.2.face))
basecamp.vs = as.data.frame(table(use.basecamp, like.basecamp))
sqwiggle.vs = as.data.frame(table(use.sqwiggle, like.sqwiggle))
twitterDM.vs = as.data.frame(table(use.twitterDM, like.twitterDM))
whatsapp.vs = as.data.frame(table(use.whatsapp, like.whatsapp))
wiki.vs = as.data.frame(table(use.wiki, like.wiki))

# create a stacked barplot of var2's frequency, colored by Var1
vs.1 = ggplot(skype.vs, aes(x = use.skype, y = Freq, fill = like.skype)) + geom_bar()
vs.2 = ggplot(email.vs, aes(x = use.email, y = Freq, fill = like.email)) + geom_bar()
vs.3 = ggplot(phone.vs, aes(x = use.phone, y = Freq, fill = like.phone)) + geom_bar()
vs.4 = ggplot(github.vs, aes(x = use.github, y = Freq, fill = like.github)) + geom_bar()
vs.5 = ggplot(team.page.vs, aes(x = use.team.page, y = Freq, fill = like.team.page)) + geom_bar()
vs.6 = ggplot(face.2.face.vs, aes(x = use.face.2.face, y = Freq, fill = like.face.2.face)) + geom_bar()
vs.7 = ggplot(basecamp.vs, aes(x = use.basecamp, y = Freq, fill = like.basecamp)) + geom_bar()
vs.8 = ggplot(sqwiggle.vs, aes(x = use.sqwiggle, y = Freq, fill = like.sqwiggle)) + geom_bar()
vs.9 = ggplot(twitterDM.vs, aes(x = use.twitterDM, y = Freq, fill = like.twitterDM)) + geom_bar()
vs.10 = ggplot(whatsapp.vs, aes(x = use.whatsapp, y = Freq, fill = like.whatsapp)) + geom_bar()
vs.11 = ggplot(wiki.vs, aes(x = use.wiki, y = Freq, fill = like.wiki)) + geom_bar()

grid.arrange(vs.1, vs.2, vs.3, vs.4, vs.5, vs.6, vs.7, vs.8, vs.9, vs.10, vs.11, nrow=6)

dev.off()
