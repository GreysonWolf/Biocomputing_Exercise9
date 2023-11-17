### Judith Lanahan
### 11/17/23
### Exercise 9

# set working directory

setwd("C:/Users/Judith Lanahan/OneDrive/Desktop/Biocomputing/R/Exercises/Biocomputing_Exercise9")

# read in bald eagle data set from https://catalog.data.gov/dataset/bald-eagle-productivity-metrics-on-the-copper-river-alaska-1989-1996
# this data shows the productivity of bald eagles on different sections of the Copper River in Alaska

eagleNests<-read.csv("baldEagle.csv", header = TRUE)

# call ggplot and cowplot from library

library(ggplot2)
library(cowplot)

# scatterplot of the Copper River Eagle Data. 
# There are four lines because it made more sense to split data points into their respective regions.
# the set was more informative that way.  

ggplot(data = eagleNests, aes(x=Year, y=OccupiedNests)) +
  geom_point(aes(color=RiverSegment)) +
  xlab("Year of Observation") +
  ylab("Number of Occupied Bald Eagle Nests") +
  stat_smooth(method = "lm", aes(color=RiverSegment)) +
  theme_classic()

## part 2: 
# read in data.txt

ex9data<-read.table('data.txt', header = TRUE, sep = ',')

#bar plot of means of the four populations

ggplot(data=ex9data, aes(x=region, y=observations, fill = region)) +
  stat_summary(fun = "mean", geom = "bar") +
  xlab("Region of Observation") +
  ylab("Observations") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

# scatter plot of all observations

ggplot(data=ex9data, aes(x=region, y=observations, color = region)) +
  geom_jitter() +
  theme_bw() +
  xlab("Populations") +
  ylab("Observations")

# thetwo figures show that while the average number of observations was the same in each region, 
# the spreads between the four regions were much different. For example, while north and south 
# had practically the same average, all of north's data points had similar observation numbers while
# in the south there was a group of 25 and a group of 5, putting the average number of observations between
# those two values despite no one making that number of observations. 