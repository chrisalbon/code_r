# Making Pretty Numbers with prettyNum

# We are taking two input numbers 1e10 and 1e-14, and formatting them with commas after zero and peroids before.

prettyNum(
  c(1e10, 1e-14),
  big.mark = ",",
  small.mark = ".",
  preserve.width = "individual",
  scientific = FALSE
)