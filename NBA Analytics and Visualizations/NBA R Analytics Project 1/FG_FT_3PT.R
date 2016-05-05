# reference http://stackoverflow.com/questions/17721126/simplest-way-to-do-grouped-barplot
# http://docs.ggplot2.org/0.9.3.1/geom_boxplot.html

setwd("C:/Users/willieman/Desktop/Life/R/NBA/NBA Analytics")

library("ggplot2")
library(tidyr)
library(dplyr)
library(plyr)
library(reshape2)
install.packages("extrafont")
library(extrafont)

NBA_Statistics <- read.csv("Regular_Season_Statistics.csv")
names(NBA_Statistics)

# This line deletes the last line
NBA_Statistics <- NBA_Statistics[c(-32)]

melt_NBA_Statistics <- melt(NBA_Statistics)

melt_NBA_Statistics2 <- subset(melt_NBA_Statistics, variable == "FG." | variable == "X3P." | variable == "FT.")



# The goal is to for the x axis to be Team, Legend would be broken down with FG, 3Pt, and FT Percentage, Values will be Percentages

ggplot(melt_NBA_Statistics2 , aes(factor(Team), value, fill = variable))  + geom_bar(stat="identity", position = "dodge") + scale_fill_brewer(palette = "Set1") + xlab("Team") + ylab("Percentage") + labs(color = "Field Goal") + theme(text = element_text(size=15), axis.text.x = element_text(angle=90, vjust=1,size = 20), plot.title=element_text(family="Times", face="bold", size=20)) + labs(title = "Field Goal/ 3 Point / Free Throw Percentages")

# Box Plot
ggplot(melt_NBA_Statistics2, aes(factor(variable), value)) + geom_boxplot(aes(fill = variable)) + xlab("Shot Type") + ylab("Percentage") + labs(color = "Field Goal")  + labs(title = "Field Goal/ 3 Point / Free Throw Percentages")

# numerical summary
FG <- subset(melt_NBA_Statistics, variable == "FG.")
PT3 <- subset(melt_NBA_Statistics, variable == "X3P.")
FT <- subset(melt_NBA_Statistics, variable == "FT.")

Percentages <- merge(FG,PT3,by="Team")
Percentages <- merge(Percentages,FT,by="Team")

names(Percentages)[2] <- "Field Goal"
names(Percentages)[3] <- "FGPercentage"
names(Percentages)[4] <- "3 Point"
names(Percentages)[5] <- "ThreePointPercentage"
names(Percentages)[6] <- "Free Throw"
names(Percentages)[7] <- "FTPercentage"


summary(Percentages$FGPercentage)
summary(Percentages$ThreePointPercentage)
summary(Percentages$FTPercentage)


