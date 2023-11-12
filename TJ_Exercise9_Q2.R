# Thomas Joyce Exercise 9 Question 2 Script

# Set working directory
setwd("C:/Users/thoma/OneDrive/Documents/NOTRE DAME FALL 2023/Intro to Biocomputing/Exercise 9/Biocomputing_Exercise9")

# Import Libraries
library(ggplot2)

# 2. Write a script that generates two figures that summarize the data in data.txt.

# Import data.txt
data <- read.csv("data.txt", sep=",")

# Create a barplot of the means of the four populations
ggplot(data, aes(x=region,y=observations))+
  stat_summary(fun = "mean", geom = "bar", fill = "darkblue")+
  ggtitle("Barplot for means")

# Show a scatter plot of all the observations
ggplot(data, aes(x=region,y=observations))+
  geom_jitter()+
  ggtitle("Scatter plot for all observations")

# Question: Do the bar and scatter plots tell you different stories? Why?
# Answer: Yes, the bar plot shows that the means of the four populations
# are all very close to 15. However, the scatter plot shows that the distribution
# of observations for each population is quite different. The east and west
# populations have a large standard deviation. On the other hand, most of 
# the observations for the north region are clustered closely around 15, and
# the south region has some observations with high values and other observations
# with lower values. For this case, I think side by side box plots could also
# be another useful type of data visualization. 