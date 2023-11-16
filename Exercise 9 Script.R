#John LeSage
#Biocomputing Exercise 9, 11/14/23

#Question 1
setwd("~/Desktop/Exercise9")
#navigates R to Exercise 9 directory, where the appropriate files are stored
library(ggplot2)
library(cowplot)
temps <- read.table("temps.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
#setting up data frame and appropriate R packages
ggplot(data=temps, aes(x=Latitude, y=AvgHigh)) + geom_point() + xlab("Latitude (degrees N)") + ylab("Avg. March High (degrees F)") + stat_smooth(method = "lm")

#Question 2
data <- read.table("data.txt", header=TRUE, sep=",", stringsAsFactors=FALSE)
#loads the "data.txt" file into R, where it is stored as a data frame
