setwd("~/Desktop/shell-lesson-data/exercises/Biocomputing_Exercise9")

# Problem 1
# read the data set from a text file and save it as a variable
heightweight<- read.table("heightweightdata.txt", header=TRUE)
# load ggolot
library(ggplot2)
# make a scatter plot that includes a trendline
ggplot(data=heightweight,
       aes(x=Height, y=Weight, color=Height))+
  geom_point()+
  theme_classic()+
  stat_smooth(method="lm", color='red')+
  xlab("Height (inches)") +
  ylab("Weight (pounds)") +
  ggtitle("Height and Weight Data from MCHC in Hong Kong")

# Problem 2
# read data.txt into a variable
dataset<- read.table('data.txt', header = TRUE, sep = ',')
# make a bar plot for the means of each population
ggplot(data=dataset,
       aes(x=region, y=observations)) +
  stat_summary(fun=mean, 
               geom="bar", 
               fill = "skyblue", 
               width = 0.7) +
  xlab("Region") +
  ylab("Observations") +
  theme_bw()

# show all observations
ggplot(data=dataset,
       aes(x=region, y = observations, color=region)) +
  geom_jitter(shape=20) +
  theme_bw() +
  xlab("Region")+
  ylab("Observations")

# the scatter plot shows the distribution of observations for each region, 
# as well as the range of observations for each region
# the bar plot shows the different means, but you are not able to see the range of observations