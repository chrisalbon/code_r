# Simple Venn Diagram
# original source: http://stackoverflow.com/questions/8713994/venn-diagram-in-r-proportional-and-color-shading-possible-semi-transparency-sup

# load the venneuler package
require(venneuler)

# run the package on some simulated data
v <- venneuler(c(A = 100, B = 200, "A&B" = 50))

# plot it
plot(v)