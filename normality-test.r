# Normality Test

# One simple test for normality is a quantile-quantile plot. It plots the sample's quantiles against a set of quantiles taken from a normal distribution.

# If the points follow the line drawn, they are roughly normally distributed. If the points create a S-shape or other shape, they are not normally distributed

# create simulated data that is not normal
y <- runif(1000)

# create simulated data that is normal
y.norm <- rnorm(1000)

# create a qq-plot for the non-normal data
qqnorm(y)
qqline(y,lty=2)

# create a qq-plot for the normal data
qqnorm(y.norm)
qqline(y.norm,lty=2)

# Shapiro test

# The null hypothesis is that the data is normally distributed. We want a large p-value, meaning that we cannot reject the null hypothesis (that the data is normally distributed)

# shapiro test on non-normal data (results show that we can reject the null that the data is normally distributed)
shapiro.test(y)

# shapiro test on normal data (results show that we cannot reject the null hypothesis that the data is normally distributed)
shapiro.test(y.norm)