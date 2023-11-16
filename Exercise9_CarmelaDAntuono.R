#Exercise 9 - Carmela D'Antuono
rm(list=ls())
setwd("~/Desktop/Biocomputing_Exercise9")
library(ggplot2)


#Question 1 
data1 <- read.csv("StJoe.csv")
glimpse(data1) #this is the data file I am currently working on in my research lab
  #I am going to clean up this large file to just include the number of collections
  #of mosquitoes made each year (1976-1997)
library(dplyr)
library(lubridate)
library(tidyverse)
library(tidyr)
mydata_collections <- data1 %>% 
  group_by(year) %>% 
  summarise(count = n()/n_distinct(species))
  #I would expect the number of collections to increase over time as I know that
  #the mosquito collection efforts from Notre Dame did increase over time, as 
  #the resources given to this lab increased.
mydata_collections
yearly_collection_graph <- ggplot(data=mydata_collections, aes(x=year, y=count)) +
  geom_point() +
  theme(plot.title = element_text(size = 8)) +
  labs(x="Year", y="Yearly Number of Collections") +
  theme(axis.text.x = element_text(angle = 90)) +
  stat_smooth(method="lm")
yearly_collection_graph

#Question 2
dataFile <- read.csv("data.txt", header = TRUE, stringsAsFactors = FALSE)

#make a barplot of the means of each region's observations 
plot1 <- ggplot(dataFile, aes(x = region, y = observations, color = region)) + 
  stat_summary(fun = mean, geom = "bar") +
  theme_classic()
plot1

#make a scatterplot of all observations 
plot2 <- ggplot(dataFile, (aes(y=observations, x=region, color = region))) +
  geom_point(size=0.5, alpha=0.1) +
  geom_jitter()
plot2

#The bar and the scatter plots do tell different stories about the data. The bar
#plot simply shows that the averages of the observations for each region and based 
#on this information alone, it appears that the observations for each region are 
#roughly the same. However, the scatterplot, which shows each individual observation
#point for the regions. It is clear that the east and west have observations that
#span from 0 to 30. However, the east's observations are more concentrated around the 
#mean (15) with few points above 25 or below 5 and the west's observations are 
#seemingly uniformly distributed from exactly 0 to exactly 30. The north's 
#observations are all concentrated right at 15, with the range being from about 
#12 to 18. And the south's observations are clustered in two groups around 5 and 
#25 with no points in the middle. Thus the scatterplot makes obvious that, despite
#the means for each region's observations being very similar, there is a large 
#discrepancy in the distribution of the observations for each region. Thus, the 
#scatterplot might be a better representation of this data as the bar plot attempts 
#to categorize unique data distributions in one statistic (the mean).