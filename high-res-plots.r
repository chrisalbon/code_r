# Create High-Res Plots In R

## Generate 100,000 normally distributed observations
x <- rnorm(100000)

# Create a 1600x1600 png at 300px/in
png("100kPoints300dpi.png", units = "px", width=1600, height=1600, res=300)

# Plot the 100 points on the png
plot(x, main="100,000 points", col=adjustcolor("black", alpha=0.2))
dev.off()