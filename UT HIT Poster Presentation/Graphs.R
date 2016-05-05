setwd("C:/Users/willieman/Desktop/Skool/College Homework/_Post-Bact/Health IT/UT Health IT Spring 2016 Documents/Research & Practicum")

library("ggplot2")
library(tidyr)
library(dplyr)
library(reshape2)
library("extrafont")
library(extrafont)

# Ability of pharmacy clinical decision-support software 

significant <- read.csv("Clinically_significant_drug-drug_interactions.csv")
names(significant)
names(significant)[2] <- "All"
names(significant)[3] <- "Community"
names(significant)[4] <- "Inpatient"
names(significant)[5] <- "Other"

melt_sig <- melt(significant)

noninteracting <- read.csv("Non-interacting pairs2.csv")
names(noninteracting)
names(noninteracting)[2] <- "All"
names(noninteracting)[3] <- "Community"
names(noninteracting)[4] <- "Inpatient"
names(noninteracting)[5] <- "Other"

melt_noninteracting <- melt(noninteracting)

#Histograms 
cbPalette <- c("#999999", "#E69F00", "#56B4E9")
scale_fill_manual(values=cbPalette)
newdata <- subset(melt_sig, variable != "All")
newdata <- subset(melt_sig, variable == "All")

ggplot(newdata, aes(value)) +  
  geom_histogram(binwidth = 5 ) + ylab("# of Pharmacies") +
  xlab("% of Correct CDSS Responses \n Per known Drug-Drug Interaction")  +
  theme(text = element_text(size=20), axis.text.x = element_text(angle=90, vjust=1))  + stat_bin(bin = 10, colours = "black", fill = "#365F93")  +  scale_x_continuous(breaks = c( 0,10,20,30,40,50,60,70,80,90,100), limits = c(0,100)) 


summary(newdata)



newdata2 <- subset(melt_noninteracting , variable != "All")
summary(newdata2)
ggplot(newdata2, aes(value)) + geom_histogram(binwidth = 5 ) +  xlab("% of Correct CDSS Responses\n per known Non-Drug-Drug Interaction") + ylab("# of Pharmacies") + labs(color = "Type of Pharmacy") +
  theme(text = element_text(size=20), axis.text.x = element_text(angle=90, vjust=1)) + stat_bin(bin = 10, fill = "#39ADC4")  +  scale_x_continuous(breaks = c(50,60,70,80,90,100), limits = c(50,100)) 



