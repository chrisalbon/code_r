# Flow Control

# This is the same as conditional statements.

# If

# If always needs a logical statement in its brackets.

# If TRUE, say so.
if(TRUE) message("This is true.")

# If FALSE, say so.
if(FALSE) message("Wrong.")

# If the random number generated is over .5, execute what is inside the top brackets, else execute what is inside the bottom brackets
if(runif(1) > 0.5)
{
  message("The number is over .5")
} else
{
  message("The number is under .5")
}

# ELSE IF

# Generate a random number between 0 and 1
x <- runif(1)

# Execute different message commands depending on the value of the number.
if(x > 0.25)
{
  message("x is greater than 0.25")
} else if(x > 0.5)
{
  message("x is greater than 0.50")
} else if(x > 0.75)
{
  message("x is greater than 0.75")
} else if(x > 0.95)
{
  message("x is greater than 0.95")
}

# IFELSE On Every Element In A Vector

#IFELSE is for the flow control of entire vectors

# Generate 10 random elements between 0 and 1
y <- runif(10)

# If an element is above .5, mark as "high", else, mark as "low"
ifelse(y > 0.5, "High", "Low")