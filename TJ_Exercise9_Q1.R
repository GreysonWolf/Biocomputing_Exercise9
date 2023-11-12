# Thomas Joyce Exercise 9 Question 1 Script

# Set working directory
setwd("C:/Users/thoma/OneDrive/Documents/NOTRE DAME FALL 2023/Intro to Biocomputing/Exercise 9/Biocomputing_Exercise9")

# Import Libraries
library(ggplot2)

# 1. Find some data on two variables that you would expect
# to be related to each other. Make a scatter plot of those
# two variables that includes a trend line.

# Load text file for Height and Weight data from the 
# National Health and Nutrition Examination Survey 2009-2012
NHANES_data <- read.delim("NHANES_data.txt", header = TRUE, sep = "")

# Create scatter plot for Weight vs. Height that includes a trend line
ggplot(NHANES_data, aes(x=Height,y=Weight))+
  geom_point()+  # Add points for the scatter plot
  geom_smooth(method = lm, formula = y ~ poly(x,3), se = FALSE)+ # Add a parabolic trend line
  ggtitle("NHANES 2009-2012 Weight vs. Height") + xlab("Height (cm)") + ylab("Weight (kg)") # Set labels

