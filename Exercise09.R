# PERSONAL DATA PLOT (my own data!)
#line chart with value sums over time and trendline
library(ggplot2)

#loading this text file
AWAllLEMISYearSums<-read.csv("AWAllLEMISYearSums.csv")

#scatter plot of those two variables that includes a trend line.
ggplot(AWAllLEMISYearSums, aes(x = shipment_year, y = Median_Calculated_Value/1000000)) +
  geom_point() +
  geom_smooth(method = "lm", se = TRUE, color = "blue") + 
  labs(x = "Shipment Year", y = "Sum of Median Calculated Value in Millions") +
  theme_bw() +
  theme(
    axis.title = element_text(color = "black", size = 12, face = 2),
    axis.text = element_text(color = "black", size = 10),
    axis.title.x = element_text(margin = margin(t = 0.2, unit = "in")),
    axis.title.y = element_text(margin = margin(r = 0.2, unit = "in"))
    
    

# DATA.TXT PLOTS
#loading the data
data<-read.table("data.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

# barplot of the means of the four populations
ggplot(data, aes(x = region, y = observations)) +
  geom_bar(stat = "summary", fun = "mean")+
  xlab("region") +
  ylab("observations") +
  theme_classic()

#scatter plot of all of the observations
ggplot(data = data,
       aes(x = region, y = observations)) +
  geom_point() +
  geom_jitter()+
  xlab("region") +
  ylab("observations") +
  theme_classic()

# Do the bar and scatter plots tell you different stories? Why?
  #They do tell different stories, because the bar plot suggests the populations
  #have the same observations, while the scatterplot shows their different skews.
  #Furthermore, the scatter plot reveals that the south population exhibits a 
  #binomial distribution in observations, while the mean bar plot makes it seem 
  #like all observations are in the middle of the true binomial distribution.