# Loops


# R has three types of loops: repeat, while, and for.

# repeat Loops

## Repeat loops executes the same code again and again until told to stop.

# print 1 to 10, stop at 10
for(i in 1:10)
{
  print(paste("i =", i));
}

# while Loops

# unlike repeat loops, while loops check at the beginning of the code if that code should end, and then (maybe) execute. This is the oppsite to repeat loops that execute and then check if they should end.

# create an object that samples one of the three character strings
action <- sample(
  c(
    "Make pancakes",
    "Make burritos",
    "Make tacos"
  ),
  1
)

# If the variable "action" (created above) is not "Make tacos" then run action (recreated in the loop) again. Do so until it is make tacos.
while(action != "Make tacos")
{
  action <- sample(
    c(
      "Make pancakes",
      "Make burritos",
      "Make tacos"
    ),
    1
  )
  message(action)
}

# for Loops

## For loops are for when you want to repeat a code for a known and finite amount of time. for loops operate on each element of the vector.

# for each element in a 1:5 vector, say a message
for(i in 1:5) message("i = ", i)

# For each month in the variable, month.name, say a message
for(month in month.name)
{
  message("The month of ", month)
}