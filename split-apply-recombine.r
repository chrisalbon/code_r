# Split, Apply, Recombine

## split up the data by gear number
data <- split(mtcars, mtcars$gear)

## apply a function (in this case a linear model)
fits <- lapply(data, function(x) return(lm(x$mpg~x$disp)$coef))

## recombine the function applied in the line aboove again
do.call(rbind, fits)