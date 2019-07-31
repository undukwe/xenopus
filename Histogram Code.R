#load ggplot
library(ggplot2)

#read csv file into code
F80D_1_M112S_1_csv <- read.csv("~/Desktop/Steam/Annotations/Extracted Intervals/CSV Files/20180730_XLPF1_F80D_1_M112S_1_secondseparation_extract.csv")

#make plot
hist(F80D_1_M112S_1_csv$Difference..ms.[which(F80D_1_M112S_1_csv$Label=="F")], breaks = 1500,  xlim =c(0, 500), ylim=c(0,80), xlab="Difference in Milliseconds", main="F80D_1_M112S_1 Female Interpulse Interval Frequency")


