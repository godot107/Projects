setwd("C:/Users/willieman/Desktop/Skool/College Homework/_Post-Bact/SDS 335/HW/Project")
library("ggplot2")
library(tidyr)
library(dplyr)

before <- read.csv("20x15.csv")
after <- read.csv("output.csv")

Ligands <- names(before)[2:21]
rows <- before$Rows


head(before)

x2 <- L20

before <- before[before$Rows == 'R1',]

#ggplot(before, aes(x = L1)) + geom_point()

for (i in 1:20){

ggplot(before, aes(x=Rows, y=x2)) + 
    # Group all points; otherwise no line will show
  geom_point(size=3) + geom_point(aes(color = as.factor(Rows)))

}

