#  County-Level Thematic Maps
# Original Source: http://stackoverflow.com/questions/1260965/developing-geographic-thematic-maps-with-r

gpclibPermit()
library(maptools)
#substitute your shapefiles here
state.map <- readShapeSpatial("/Users/chrisralbon/cra/cra_projects/code_r/data/states/states.shp")
counties.map <- readShapeSpatial("/Users/chrisralbon/cra/cra_projects/code_r/data/UScounties/UScounties.shp")
## this is the variable we will be plotting
counties.map@data$noise <- rnorm(nrow(counties.map@data))

plot.heat <- function(counties.map,state.map,z,title=NULL,breaks=NULL,reverse=FALSE,cex.legend=1,bw=.2,col.vec=NULL,plot.legend=TRUE) {
  ##Break down the value variable
  if (is.null(breaks)) {
    breaks=
      seq(
        floor(min(counties.map@data[,z],na.rm=TRUE)*10)/10
        ,
        ceiling(max(counties.map@data[,z],na.rm=TRUE)*10)/10
        ,.1)
  }
  counties.map@data$zCat <- cut(counties.map@data[,z],breaks,include.lowest=TRUE)
  cutpoints <- levels(counties.map@data$zCat)
  if (is.null(col.vec)) col.vec <- heat.colors(length(levels(counties.map@data$zCat)))
  if (reverse) {
    cutpointsColors <- rev(col.vec)
  } else {
    cutpointsColors <- col.vec
  }
  levels(counties.map@data$zCat) <- cutpointsColors
  plot(counties.map,border=gray(.8), lwd=bw,axes = FALSE, las = 1,col=as.character(counties.map@data$zCat))
  if (!is.null(state.map)) {
    plot(state.map,add=TRUE,lwd=1)
  }
  ##with(counties.map.c,text(x,y,name,cex=0.75))
  if (plot.legend) legend("bottomleft", cutpoints, fill = cutpointsColors,bty="n",title=title,cex=cex.legend)
  ##title("Cartogram")
}

plot.heat(counties.map,state.map,z="noise",breaks=c(-Inf,-2,-1,0,1,2,Inf))