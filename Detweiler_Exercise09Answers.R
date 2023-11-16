#Exercise09
#Question 1: I am using a data set I found online that relates amount of sleep 
# a college student gets vs. their GPA. My expectation is that more sleep
# correlates with a higher GPA.

#Set Working Directory
setwd("/Users/justin/Desktop/tutorial/Biocomputing_Exercise9")
#Load GGPlot and CowPlot
library(cowplot)
library(ggplot2)
#Load Data into an R file
Sleepdata=read.csv("Exercise 09 Data - Sheet1.csv", header=TRUE)
#Make Scatter Plot with trendline (Theme set to classic for aesthetic)
ggplot(Sleepdata, aes(x=GPA, y=Sleep))+
  xlab("GPA")+
  ylab("Hours of Sleep")+
  geom_point()+
  geom_smooth(method=lm)+
  theme_classic(
  )
#This data is not what I expected to see as the trend line does not follow 
# a convincing pattern of higher GPA correlating with more sleep. What do
# you know...

#Question 2
#Set Working Directory
setwd("/Users/justin/Desktop/tutorial/Biocomputing_Exercise9")
#Load GGPlot and CowPlot
library(cowplot)
library(ggplot2)
#Read Data into R
data1=read.csv("data.txt", header=TRUE)
#Bar plot of the Mean observation for each region
ggplot(data1, aes(x=region, y=observations))+
  stat_summary(geom="bar", fun="mean")+
  xlab("Region")+
  ylab("Mean of Observations")+
  theme_bw()

#Scatter Plot of All Observations
ggplot(data1, aes(x=region, y=observations))+
  geom_jitter(alpha=0.1)+
  xlab("Region")+
  ylab("Observations")

### Do the Bar and Scatter Plots tell different Stories?
##The scatter plot and the bar plot tell two different stories of the data. 
# Simply looking at the bar plot gives a mean of the observations for each 
# region, which is very close to 15 for each region. 
# Just looking at the bar plot would lead one to believe that the data for each 
#region was very similar. 

# When looking at the scatter plot, it demonstrates the distribution of the 
# points for each region, for example the observations in the North region are 
# all concentrated around the mean of 15, while in the South there are two 
#groups, one concentrated around 7 observations and another around 
# 22 observation, which will end up leading to a mean of 15 as well.

#I believe that looking at the scatter plot gives a better idea of the 
#distribution of the data for each region, as simply looking at the means gives 
# a false sense of similarity between the four regions. 

