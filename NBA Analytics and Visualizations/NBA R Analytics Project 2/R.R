setwd("C:/Users/willieman/Desktop/Life/R/NBA/NBA Analytics Project 2")
#reference: http://www.statmethods.net/advgraphs/ggplot2.html

library("ggplot2")
library(tidyr)
library(dplyr)
library(plyr)
library(reshape2)
install.packages("extrafont")
library(extrafont)
library(gridExtra)

NBA_Statistics <- read.csv("NBA Playoffs.csv")
names(NBA_Statistics)
head(NBA_Statistics)

# MP Vs PTS with Regression Line
p1 <- ggplot(NBA_Statistics, aes(x = MP, y = PTS)) + geom_point(aes(color=factor(Series))) + geom_smooth(method = "lm", se = TRUE) + labs(title = " Total Minutes vs Total Points in a Series per Player") + xlab("Minutes Per Series") + ylab("Total Points Per Series")

#
p2 <- ggplot(NBA_Statistics, aes(x = MPAVG, y = PTSAVG)) + geom_point(aes(color = Series)) + labs(title = " Average Minutes vs Average Points in a Series per Player") + xlab(" AverageMinutes Per Series") + ylab("Average Points Per Series")


# Dot plot of Active 
p3 <- ggplot(NBA_Statistics, aes(x = Age)) + geom_dotplot() +labs(title ="Dot plot of Ages of Active NBA Players")
summary(NBA_Statistics$Age)
mean(NBA_Statistics$Age)
sd(NBA_Statistics$Age)

# A density plot
p4 <- ggplot(NBA_Statistics, aes(TRBAVG, ASTAVG)) +
  geom_raster(aes(fill = PTSAVG))

# Density plot of Average Points of a Player in a Series
p5 <- qplot(PTSAVG, data=NBA_Statistics, geom="density", fill=Series, alpha=I(.5) ,  xlab="Average Points of a Player in a Series", ylab="Density" ) 

# Density plot of Average Points of a Player in East Playoffs
p6 <- qplot(PTSAVG, data=NBA_Statistics, geom="density", fill="Finals_15", alpha=I(.5) ,  xlab="Average Points of a Player in a Series", ylab="Density" ) 

# Run the Graphs
p1
p2
p3
p4
p5
p6
