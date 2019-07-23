#total male calling duration
#F78S_2_M227B_1
library(readr)
library(dplyr)
F78S_2_M227B_1 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180724_XLPF1_F78S_2_M227B_1_secondseparation_extract.csv")
F78S_2_M227B_1_new <- F78S_2_M227B_1%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDurationF78S_2_M227B_1 <- sum(F78S_2_M227B_1_new$CallDuration)
TotalMaleCallDurationF78S_2_M227B_1

#F78S_1_M11B_1
F78S_1_M11B_1 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180723_XLPF1_F78S_1_M11B_1_secondseparation_extract.csv")
F78S_1_M11B_1_new <- F78S_1_M11B_1%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDurationF78S_1_M11B_1 <- sum(F78S_1_M11B_1_new$CallDuration)
TotalMaleCallDurationF78S_1_M11B_1

#F78S_3_M79L_2
F78S_3_M79L_2 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180801_XLPF1_F78S_3_M79L_2_secondseparation_extract.csv")
F78S_3_M79L_2_new <- F78S_3_M79L_2%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDurationF78S_3_M79L_2 <- sum(F78S_3_M79L_2_new$CallDuration)
TotalMaleCallDurationF78S_3_M79L_2

#F80D_1_M112S_1
F80D_1_M112S_1 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180730_XLPF1_F80D_1_M112S_1_secondseparation_extract.csv")
F80D_1_M112S_1_new <- F80D_1_M112S_1%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDurationF80D_1_M112S_1 <- sum(F80D_1_M112S_1_new$CallDuration)
TotalMaleCallDurationF80D_1_M112S_1

#F80D_3_M70L_2
F80D_3_M70L_2 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180813_XLPF1_F80D_3_M70L_2_secondseparation_extract.csv")
F80D_3_M70L_2_new <- F80D_3_M70L_2%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDurationF80D_3_M70L_2 <- sum(F80D_3_M70L_2_new$CallDuration)
TotalMaleCallDurationF80D_3_M70L_2

#F80D_4_M11M_2
F80D_4_M11M_2 <- read.csv("~/Desktop/Annotations/Extracted Intervals/20180814_XLPF1_F80D_4_M11M_2_secondseparation_extract.csv")
F80D_4_M11M_2_new <- F80D_4_M11M_2%>%
  mutate(CallDuration = (EndTime - StartTime))
TotalMaleCallDurationF80D_4_M11M_2 <- sum(F80D_4_M11M_2_new$CallDuration)
TotalMaleCallDurationF80D_4_M11M_2

#total bouts of male calling
#F78S_2_M227B_1
TotalMaleBoutsF78S_2_M227B_1 <- length(F78S_2_M227B_1$Label[F78S_2_M227B_1$Label == "M"])
TotalMaleBoutsF78S_2_M227B_1

#F78S_1_M11B_1
TotalMaleBoutsF78S_1_M11B_1 <- length(F78S_1_M11B_1$Label[F78S_1_M11B_1$Label == "M"])
TotalMaleBoutsF78S_1_M11B_1

#F78S_3_M79L_2
TotalMaleBoutsF78S_3_M79L_2 <- length(F78S_3_M79L_2$Label[F78S_3_M79L_2$Label == "M"])
TotalMaleBoutsF78S_3_M79L_2

#F80D_1_M112S_1
TotalMaleBoutsF80D_1_M112S_1 <- length(F80D_1_M112S_1$Label[F80D_1_M112S_1$Label == "M"])
TotalMaleBoutsF80D_1_M112S_1

#F80D_3_M70L_2
TotalMaleBoutsF80D_3_M70L_2 <- length(F80D_3_M70L_2$Label[F80D_3_M70L_2$Label == "M"])
TotalMaleBoutsF80D_3_M70L_2

#F80D_4_M11M_2
TotalMaleBoutsF80D_4_M11M_2 <- length(F80D_4_M11M_2$Label[F80D_4_M11M_2$Label == "M"])
TotalMaleBoutsF80D_4_M11M_2

#total number of female pulses
#F78S_2_M227B_1
TotalFemalePulsesF78S_2_M227B_1 <- length(F78S_2_M227B_1$Label[F78S_2_M227B_1$Label == "F"])
TotalFemalePulsesF78S_2_M227B_1

#F78S_1_M11B_1
TotalFemalePulsesF78S_1_M11B_1 <- length(F78S_1_M11B_1$Label == "F")
TotalFemalePulsesF78S_1_M11B_1

#F78S_3_M79L_2
TotalFemalePulsesF78S_3_M79L_2 <- length(F78S_3_M79L_2$Label[F78S_3_M79L_2$Label == "F"])
TotalFemalePulsesF78S_3_M79L_2

#F80D_1_M112S_1
TotalFemalePulsesF80D_1_M112S_1 <- length(F80D_1_M112S_1$Label[F80D_1_M112S_1$Label == "F"])
TotalFemalePulsesF80D_1_M112S_1

#F80D_3_M70L_2
TotalFemalePulsesF80D_3_M70L_2 <- length(F80D_3_M70L_2$Label[F80D_3_M70L_2$Label == "F"])
TotalFemalePulsesF80D_3_M70L_2

#F80D_4_M11M_2
TotalFemalePulsesF80D_4_M11M_2 <- length(F80D_4_M11M_2$Label[F80D_4_M11M_2$Label == "F"])
TotalFemalePulsesF80D_4_M11M_2

#Male Intervals with Female Calling
#F78S_2_M227B_1
MaleDataF78S_2_M227B_1 <- subset(F78S_2_M227B_1, Label== "M", select = c(StartTime:Label))
MaleDataF78S_2_M227B_1
FemaleDataF78S_2_M227B_1 <- subset(F78S_2_M227B_1, Label == "F", select = -EndTime)  
FemaleDataF78S_2_M227B_1
for (row in 1:nrow(MaleDataF78S_2_M227B_1)){
  startTime <- MaleDataF78S_2_M227B_1[row, "StartTime"]
  endTime <- MaleDataF78S_2_M227B_1[row, "EndTime"]
  for( i in FemaleDataF78S_2_M227B_1$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
    }
  }
}

MWithF_F78S_2_M227B_1 <- print(count)

#F78S_1_M11B_1
MaleDataF78S_1_M11B_1 <- subset(F78S_1_M11B_1, Label== "M", select = c(StartTime:Label))
MaleDataF78S_1_M11B_1
FemaleDataF78S_1_M11B_1 <- subset(F78S_1_M11B_1, Label == "F", select = -EndTime)  
FemaleDataF78S_1_M11B_1
for (row in 1:nrow(MaleDataF78S_1_M11B_1)){
  startTime <- MaleDataF78S_1_M11B_1[row, "StartTime"]
  endTime <- MaleDataF78S_1_M11B_1[row, "EndTime"]
  for( i in FemaleDataF78S_1_M11B_1$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
    }
  }
}

MWithF_F78S_1_M11B_1 <- print(count)

#F78S_3_M79L_2
MaleDataF78S_3_M79L_2 <- subset(F78S_3_M79L_2, Label== "M", select = c(StartTime:Label))
MaleDataF78S_3_M79L_2
FemaleDataF78S_3_M79L_2 <- subset(F78S_3_M79L_2, Label == "F", select = -EndTime)  
FemaleDataF78S_3_M79L_2
for (row in 1:nrow(MaleDataF78S_3_M79L_2)){
  startTime <- MaleDataF78S_3_M79L_2[row, "StartTime"]
  endTime <- MaleDataF78S_3_M79L_2[row, "EndTime"]
  for( i in FemaleDataF78S_3_M79L_2$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
    }
  }
}

MWithF_F78S_3_M79L_2 <- print(count)

#F80D_1_M112S_1
MaleDataF80D_1_M112S_1 <- subset(F80D_1_M112S_1, Label== "M", select = c(StartTime:Label))
MaleDataF80D_1_M112S_1
FemaleDataF80D_1_M112S_1 <- subset(F80D_1_M112S_1, Label == "F", select = -EndTime)  
FemaleDataF80D_1_M112S_1
for (row in 1:nrow(MaleDataF80D_1_M112S_1)){
  startTime <- MaleDataF80D_1_M112S_1[row, "StartTime"]
  endTime <- MaleDataF80D_1_M112S_1[row, "EndTime"]
  for( i in FemaleDataF80D_1_M112S_1$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
    }
  }
}

MWithF_F80D_1_M112S_1 <- print(count)

#F80D_3_M70L_2
MaleDataF80D_3_M70L_2 <- subset(F80D_3_M70L_2, Label== "M", select = c(StartTime:Label))
MaleDataF80D_3_M70L_2
FemaleDataF80D_3_M70L_2 <- subset(F80D_3_M70L_2, Label == "F", select = -EndTime)  
FemaleDataF80D_3_M70L_2
for (row in 1:nrow(MaleDataF80D_3_M70L_2)){
  startTime <- MaleDataF80D_3_M70L_2[row, "StartTime"]
  endTime <- MaleDataF80D_3_M70L_2[row, "EndTime"]
  for( i in FemaleDataF80D_3_M70L_2$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
    }
  }
}

MWithF_F80D_3_M70L_2 <- print(count)

#F80D_4_M11M_2
MaleDataF80D_4_M11M_2 <- subset(F80D_4_M11M_2, Label== "M", select = c(StartTime:Label))
MaleDataF80D_4_M11M_2
FemaleDataF80D_4_M11M_2 <- subset(F80D_4_M11M_2, Label == "F", select = -EndTime)  
FemaleDataF80D_4_M11M_2
for (row in 1:nrow(MaleDataF80D_4_M11M_2)){
  startTime <- MaleDataF80D_4_M11M_2[row, "StartTime"]
  endTime <- MaleDataF80D_4_M11M_2[row, "EndTime"]
  for( i in FemaleDataF80D_4_M11M_2$StartTime){
    if (i >= startTime && i <= endTime){
      count <- count + 1
      break
    }
  }
}

MWithF_F80D_4_M11M_2 <- print(count)


#Construct Data Table
DT <- data.table(
  variable1 = numeric(),
  variable2 = numeric(),
  variable3 = numeric(),
  variable4 = numeric()
)
colnames(DT)<-c("Male Bouts","Female Pulses", "Male Call Duration", "Male Intervals With Female Calling")
DT <- add_row(DT, "Male Bouts" = TotalMaleBoutsF78S_1_M11B_1, "Female Pulses" = TotalFemalePulsesF78S_1_M11B_1, "Male Call Duration" = TotalMaleCallDurationF78S_1_M11B_1, "Male Intervals With Female Calling" = MWithF_F78S_1_M11B_1 )
DT <- add_row(DT, "Male Bouts" =TotalMaleBoutsF78S_2_M227B_1, "Female Pulses" = TotalFemalePulsesF78S_2_M227B_1, "Male Call Duration" = TotalMaleCallDurationF78S_2_M227B_1, "Male Intervals With Female Calling" = MWithF_F78S_2_M227B_1)
DT <- add_row(DT, "Male Bouts" = TotalMaleBoutsF78S_3_M79L_2, "Female Pulses" = TotalFemalePulsesF78S_3_M79L_2, "Male Call Duration" = TotalMaleCallDurationF78S_3_M79L_2, "Male Intervals With Female Calling" = MWithF_F78S_3_M79L_2)
DT <- add_row(DT, "Male Bouts" = TotalMaleBoutsF80D_1_M112S_1, "Female Pulses" = TotalFemalePulsesF80D_1_M112S_1, "Male Call Duration" = TotalMaleCallDurationF80D_1_M112S_1, "Male Intervals With Female Calling" = MWithF_F80D_1_M112S_1)
DT <- add_row(DT, "Male Bouts" = TotalMaleBoutsF80D_3_M70L_2, "Female Pulses" = TotalFemalePulsesF80D_3_M70L_2, "Male Call Duration" = TotalMaleCallDurationF80D_3_M70L_2, "Male Intervals With Female Calling" = MWithF_F80D_3_M70L_2)
DT <- add_row(DT, "Male Bouts" = TotalMaleBoutsF80D_4_M11M_2, "Female Pulses" = TotalFemalePulsesF80D_4_M11M_2, "Male Call Duration" = TotalMaleCallDurationF80D_4_M11M_2, "Male Intervals With Female Calling" = MWithF_F80D_4_M11M_2)
DT

#the male interval script needs to be edited, the output adds 4 to the previous one each time you run it
