# File Paths

# Paths can be relative to the current working directory

# View the working directory
getwd()

# Set the working directory to the user's home directory
setwd("~")

# In relative paths, . denotes the currect directory
# In relative paths, .. denotes the parent directory
# In relative paths,  ~ denotes your home directory

# Path.expand converts relative paths to absolutely paths
path.expand("~")

# basename() returns the file name without the path
basename()

# dirname returns the path without the file name
dirname()