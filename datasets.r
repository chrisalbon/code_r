# Datasets

# view built-in datasets
data()

# view all installed datasets from all installed packages
data(package = .packages(TRUE))

# load a dataset "votes.repub" from the installed package "cluster"
data("votes.repub", package = "cluster")