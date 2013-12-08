# Crosstabs

# create some simulated disaster data
event <- c("flood","fire","flood","fire","riot","flood","riot","riot","flood"); disaster
location <- c("africa", "asia", "europe","africa", "asia", "europe","africa", "asia", "europe")
disasters <- data.frame(event, location)
rm(event, location)

# create a variable that is the frequency counts of different types of disaster events
event.counts.df <- as.data.frame(table(disasters$event));event.counts.df

# create a crosstab of event types by location
disaster.crosstab <- table(disasters$event, disasters$location); disaster.crosstab