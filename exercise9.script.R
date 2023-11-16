# load tidyverse library to use ggplot
library(tidyverse)

#### part 1 ----
# read in data
heightweight.txt <- read.table("exercise9_data.txt", sep = "\t", header = TRUE)
# plot data
ggplot(data = heightweight.txt, aes(x = Height, y = Weight)) +
  geom_point() +
  theme_classic() +
  geom_smooth(method = lm)

#### part 2 ----
# read in data.txt
data.txt <- read.table("data.txt", sep = ",", header = TRUE)

## bar plot
# calculate means

# subset the data, then calculate the mean
data_north <- data.txt[data.txt$region == "north", ]
north_mean <- mean(data_north$observations)

data_south <- data.txt[data.txt$region == "south", ]
south_mean <- mean(data_south$observations)

data_east <- data.txt[data.txt$region == "east", ]
east_mean <- mean(data_east$observations)

data_west <- data.txt[data.txt$region == "west", ]
west_mean <- mean(data_west$observations)

# make a data set out of regions and means
data_mean <- data.frame(x = c("north", "south", "east", "west"),
                        y = c(north_mean, south_mean, east_mean, west_mean))

# plot data
ggplot(data = data_mean, aes(x = x, y = y, color = x, fill = x)) +
  geom_bar(stat = "identity")

## scatter plot
ggplot(data = data.txt, aes(x = region, y = observations, color = region, alpha = 0.1)) +
  geom_jitter(height = 0) +
  theme_classic() +
  theme(legend.position = "none")

## thoughts:
# the bar and scatter plots do tell different stories. according to the bar plot,
# one would interpret that all of the regions are essentially identical due to
# the fact that their average observations are basically the same. however, when
# looking at the scatter plot, you can see that although the averages are the same
# across all four regions, each region has a very different spread of data.
