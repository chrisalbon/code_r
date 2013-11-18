# Heatmap For Factors

# download the data
nba <- read.csv("http://datasets.flowingdata.com/ppg2008.csv", sep=",")

# order the data by the PTS variable
nba <- nba[order(nba$PTS),]

# name each now by the Name variable
row.names(nba) <- nba$Name

# drop the first column
nba <- nba[,2:20]

# convert the data to a matrix for the heatmap
nba_matrix <- data.matrix(nba)

# create a heatmap of nba_matrix with the columns colored by the heat.colors
nba_heatmap <- heatmap(nba_matrix, Rowv=NA, Colv=NA, col = heat.colors(256), scale="column", margins=c(5,10))

