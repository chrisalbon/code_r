# Stacked Area Plot
# http://www.r-bloggers.com/a-nifty-area-plot-or-a-bootleg-of-a-ggplot-geom/

# load the ggplot2 package
library(ggplot2)

# load the reshape package
library(reshape)

# set the random seed
set.seed(3)

# create a sequence
t.step <- seq(0,20)

# create some group names
grps <- letters[1:10]

# create simulated data for group values across time
grp.dat <- runif(length(t.step)*length(grps),5,15)

# create data frame
grp.dat <- matrix(grp.dat,nrow=length(t.step),ncol=length(grps))
grp.dat <- data.frame(grp.dat,row.names=t.step)
names(grp.dat) <- grps

#reshape the data
p.dat <- data.frame(step=row.names(grp.dat),grp.dat,stringsAsFactors=F)
p.dat <- melt(p.dat,id='step')
p.dat$step <- as.numeric(p.dat$step)

#create plots
p <- ggplot(p.dat, aes(x=step,y=value)) + theme(legend.position="none")
p + geom_area(aes(fill=variable))
p + geom_area(aes(fill=variable),position='fill')
