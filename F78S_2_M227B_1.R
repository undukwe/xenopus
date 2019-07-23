#total male calling duration, total bouts of male calling, total number of female pulses, number of male intervals where there is female calling
#total male calling duration
library(readr)
library(dplyr)
F78S_2_M227B_1 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180724_XLPF1_F78S_2_M227B_1_secondseparation_extract.csv")
F78S_2_M227B_1_new <- F78S_2_M227B_1%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDuration <- sum(F78S_2_M227B_1_new$CallDuration)
TotalMaleCallDuration
#total bouts of male calling
TotalMaleBouts <- length(F78S_2_M227B_1$Label[F78S_2_M227B_1$Label == "M"])
TotalMaleBouts
#total number of female pulses
TotalFemalePulses <- length(F78S_2_M227B_1$Label[F78S_2_M227B_1$Label == "F"])
TotalFemalePulses
#number of male intervals where there is female calling
MaleData <- subset(F78S_2_M227B_1, Label== "M", select = c(StartTime:Label))
MaleData
FemaleData <- subset(F78S_2_M227B_1, Label == "F", select = -EndTime)  
FemaleData

##wrong code, found the number of female calls that overlap with male intervals like an idiot
##count <- 0

##for(i in FemaleData$StartTime){
  ##for (row in 1:nrow(MaleData)){
    ##startTime <- MaleData[row, "StartTime"]
    ##endTime <- MaleData[row, "EndTime"]
      ##if (i >= startTime && i <= endTime){
        ##count <- count + 1
      ##}
  ##}
  
##}

##THIS should work sorry
count <- 0
for (row in 1:nrow(MaleData)){
  startTime <- MaleData[row, "StartTime"]
  endTime <- MaleData[row, "EndTime"]
  for( i in FemaleData$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
      }
  }
}

print(count)
