# Exercise 9
# Number 1
# install and load ggplot2
install.packages("ggplot2")
library(ggplot2)
# contents of text file below: 
# Hours of Study	Exam Score
# 2	65
# 3	75
# 4	82
# 5	88
# 6	92
# load text file into R, use read.csv because it's comma delimited
examdata <- read.csv("exam_data.csv")
# create scatter plot with trend line
# name variables
ggplot(examdata, aes(x = Hours.of.Study, y = Exam.Score)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, col = "red") +
  labs(title = "Relationship between Hours of Study and Exam Score",
       x = "Hours of Study",
       y = "Exam Score")

# Number 2
# load data.txt file into R
data <- read.csv("data.txt")
# Generate a barplot of means
mean_barplot <- aggregate(observations ~ region, data = data, FUN = mean)
# Create a barplot
bar_plot <- ggplot(mean_barplot, aes(x = region, y = observations)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Barplot of Means", x = "Region", y = "Mean Observations")
# Save the barplot
ggsave("barplot_means.png", bar_plot)
# Generate a scatter plot with geom_jitter
scatter_plot <- ggplot(data, aes(x = region, y = observations)) +
  geom_jitter(width = 0.2, height = 0, alpha = 0.7) +
  labs(title = "Scatter Plot of Observations", x = "Region", y = "Observations")
# Save the scatter plot
ggsave("scatter_plot.png", scatter_plot)
# .png files of both bar plot and scatter plot should now be in your downloads
# The barplot and scatter plot tell different stories. The bar plot, showing the mean observations for each regions, gives us a general view of the data, allowing us to see the central tendency of the observations in each region. The scatter plot, showing each individual observation in each region, shows a more detailed view of the data, allowing us to clearly see the distribution of observations and any potential outliers.. 

