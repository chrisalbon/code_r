# Functions

# Functions are the verbs of R.

# Functions are actions that R can do. Some actions are pre-set in R, but if they are not, we can create our own

# create a function called add.together, wherein it adds x and y (whatever those values are) together
add.together <- function(x,y) {
  x+y
} 

# run add.together on 2 and 5
add.together(2,5) 

# To view the code that comprises a function, simply run it without any arguments
add.together

# functions can pass variables to other functions

# Notice that f() creates a variable "y", and that the y variable can be see by f()'s subfunction, g()
f <- function(x) {
  y <- 1
  g <- function(x) {
    (x + y) / 2
  }
  g(x)
}

f(5)