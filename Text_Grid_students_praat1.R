# Install Appropriate Libraries:
if (!is.installed("stringr")){
  install.packages('textgRid')
  library(textgRid)
}else{
  library(textgRid)}
library(textgRid)
library(stringr)
# Function
praat_extract<-function(filepath, outdir){
  
  textgrid <- TextGrid(filepath)
  male<-findIntervals(textgrid$male)[,2:4]
  total<-male
  if(length(textgrid$female@times)>0){
  female<-cbind(textgrid$female@times, textgrid$female@times, "F")
  colnames(female)<-c("StartTime", "EndTime", "Label")
  total<-rbind(total, female)
  }

  setwd(outdir)
  outfilepath<-paste0(tools::file_path_sans_ext(basename(filepath)), "_extract.csv")
  write.csv(total, file = outfilepath, row.names = FALSE)
  
}


######## CHANGE THE BELOW (filepath and outdir)
# Specify Correct Filepath (Make Sure it's saved as just a text file, rather than chronological text file)
filepath<-"~/Desktop/SecSepSoundandGrids/F78M Second Separation/20180817_XLPF1_F78M_4_M79D_1_secondseparation.TextGrid"
outdir<-"~/Desktop/SecSepSoundandGrids/F78M Second Separation/"

# Run
praat_extract(filepath, outdir)

