# Install Appropriate Libraries:
if (!is.installed("stringr")){
  install.packages('textgRid')
  library(textgRid)
}else{library(textgRid)}
library(textgRid)

library(stringr)

# Function
praat_extract<-function(filepath, outdir){
  
  textgrid <- TextGrid(filepath)
  
  
  male<-findIntervals(textgrid$Male)[,2:4]
  total<-male
  if(length(textgrid$Female@times)>0){
  female<-cbind(textgrid$Female@times, textgrid$Female@times, "F")
  colnames(female)<-c("StartTime", "EndTime", "Label")
  total<-rbind(total, female)
  }
  if(total$Label[1]=="FALSE"){
    total$Label=="F"
    temp_male<-data.frame(StartTime=0,
                          EndTime=0,
                          Label = "M")
    total<-rbind(total, temp_male)
  }
  
  
  setwd(outdir)
  outfilepath<-paste0(tools::file_path_sans_ext(basename(filepath)), "_extract.csv")
  write.csv(total, file = outfilepath, row.names = FALSE)
  
}


######## CHANGE THE BELOW (filepath and outdir)
# Specify Correct Filepath (Make Sure it's saved as just a text file, rather than chronological text file)
filepath<-"~/Desktop/Xenopus/F74 Second Separation/20180804_XLPF1_F74_4_M89DE_1secondseparation.TextGrid"
# '~' means that you're starting from the My Computer folder
outdir<-"~/Desktop/Xenopus/F74 Second Separation/"

# Run
`praat_extract(filepath, outdir)

``
`
install.packages("seewave", repos="http://cran.at.r-project.org/")

install.packages(c("fftw","tuneR","rgl","rpanel"), repos="http://cran.at.r-project.org/")
yes

install.packages("ggplot2")

F726 <- read.csv("20180726_XLPF1_F74_2_M112L_1SecondSeparation_extract.csv")

F726_new <- F726%>%
  mutate(CallDuration = (EndTime-StartTime))

F726TotalCallDuration <- length(F726_new$CallDuration)
F726TotalMaleCallDuration <- sum(F726_new$CallDuration)
F726TotalMaleCallDuration
sum(F726_new$CallDuration <0.00001)
F726TotalFemalePulses <- length(F726_new$CallDuration[F726_new$CallDuration<0.00001])
F726TotalFemalePulses

F804 <- read.csv("20180804_XLPF1_F74_4_M89DE_1secondseparation_extract.csv")

F804_new <- F804%>%
  mutate(CallDuration = (EndTime-StartTime))

F804TotalCallDuration <- length(F804_new$CallDuration)
F804TotalMaleCallDuration <- sum(F804_new$CallDuration)
F804TotalMaleCallDuration
sum(F804_new$CallDuration <0.00001)
F804TotalFemalePulses <- length(F804_new$CallDuration[F804_new$CallDuration<0.00001])
F804TotalFemalePulses

