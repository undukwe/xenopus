library(readr)
library(dplyr)


data <- read.csv("~/Desktop/SecSepSoundandGrids/20180731_XLPF1_F78M_2_M227B_2_extract.csv")

data <- data %>%
  mutate(Sex = Label) 

data <- data[c("Sex", "StartTime", "EndTime", "Label")]


data

write.csv("~/Desktop/SecSepSoundandGrids/20180731_XLPF1_F78M_2_M227B_2_extract.csv")