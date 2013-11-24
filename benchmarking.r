# Benchmarking R Speed

# how long does it take R to create a huge sequence of numbers?
system.time(1:10000000)

# how long does it take R to create a equally long set of random draws
system.time(runif(10000000))