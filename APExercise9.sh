library(ggplot2)
library(cowplot)

# First, generate sample data 
Sampledata <- data.frame(
  Height=c(137,140,142,145,147,150,152,155,157,160,163,165,170,173,175,178,180,183,185,188,191,193,195),
  Weight=c(70,75,79,86,91,99,103,114,120,124,132,139,145,153,159,164,170,177,182,187,193,198,204))

# Next, generate a scatter plot with the sample data from the new data frame
ggplot(data = Sampledata,
     aes(x = Height, y = Weight)) +
  geom_point() +
  ylab("Ave Female Weight (lbs)") +
  xlab("Height (cm)") +
  stat_smooth(method="lm") +
  theme_classic()

# Import data.txt
data <- read.table(file="data.txt",sep=",",header=TRUE,stringsAsFactors=FALSE)

# Create bar plot of means of each population
ggplot(data, aes(x = region, y = Observations)) +
  stat_summary(fun.y = mean,
               geom = "bar",
               color = "blue") +
  theme_bw() +
  xlab("Region") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6))

# Create a scatter plot of all observations
ggplot(data = data,
       aes(x = region, y = observations)) +
  geom_point() +
  ylab("Observations") +
  xlab("Region") +
  stat_smooth(method="lm") +
  geom_jitter() +
  theme_classic()

# The bar and scatter plots tell different stories because the scatter plot
# gives a more accurate illustration of the median and mode of each region. The
# bar plot makes the data seem more similar since it is only a comparison of
# averages.
