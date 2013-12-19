# ifelse with multiple outputs
# original source: http://stackoverflow.com/questions/1335830/why-cant-rs-ifelse-statements-return-vectors

# if TRUE, then 1, else 3. if FALSE, then 2, else 4
ifelse(c(TRUE, FALSE), c(1, 2), c(3, 4))

# if TRUE, 1 and 2, if not, then c and 4.
if (TRUE) c(1,2) else c(3,4)