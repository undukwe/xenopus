`# Ethograms for the Students:
# Here, write the path to the *.dat file:
filepath<-"~/Downloads/20180806_XLPF1_F86M_1_M88_2_separated-2.dat"

# Here, write the path to the faf file:
fafpath<-"~/Downloads/analysis_frogs_5.faf"


# Required Functions:
is.installed <- function(mypkg){
  is.element(mypkg, installed.packages()[,1])
} 
# Install Libraries:
if (!is.installed("stringr")){
  install.packages("stringr")
}
if (!is.installed("ggplot2")){
  install.packages("ggplot2")
}

library(stringr)
library(ggplot2)

# Import File from Downloads skipping the first 23 lines:
data<-read.delim(filepath, 
                 skip = 23, stringsAsFactors = FALSE)

data$frame<-gsub(" ", "", str_split_fixed(data$X.BEGIN.DATA, ",", 2)[,1])
data$beh<-gsub(" ", "", str_split_fixed(data$X.BEGIN.DATA, ",",2)[,2])
data$frame<-as.numeric(as.character(data$frame))


# Behaviors taken from Moe's sample set:
beh.states<-data.frame(codes = c("M", "F"),
           beh = c("male", "female"))


# Import Stop Codes taken from Lexi's faf:
stopcodes <- read.table(fafpath, quote="\"", stringsAsFactors=FALSE)
stopcodes<-gsub("Behavior.switchesOff.", "", 
                stopcodes[grep("Behavior.switchesOff.", stopcodes[,1]),1])
stopcodes<-str_split_fixed(stopcodes, "=", 2)
colnames(stopcodes)<-c("codes", "stop.codes")

# Combine All code information:
beh.states<-merge(beh.states, stopcodes)



new.frame<-NULL
for(x in unique(data$beh)){
  if(x!="EOF"){
  stopcodes<-unlist(str_split(beh.states[which(beh.states$codes==x), 3], ","))
  temp<-data[which(data$beh %in% c(x, stopcodes)),]
  temp<-temp[order(temp$frame),]
  
  
  temp<-temp[c(which(temp$beh==x),
               which(temp$beh==x)+1),]
  temp<-temp[which(!is.na(temp$frame)),]
  temp<-temp[order(temp$frame),]
  

  
  if(temp$beh[nrow(temp)]==x){
    add.row<-data[which(data$beh=="EOF"),]
    add.row$beh<-x
    temp<-rbind(temp, add.row)
  }  
  temp<-data.frame(beh = x,
             start = temp$frame[seq(1, nrow(temp),2)],
             end = temp$frame[seq(2, nrow(temp),2)])
  temp$start<-as.numeric(as.character(temp$start))
  temp$end<-as.numeric(as.character(temp$end))
  
  new.frame<-rbind(new.frame, temp)
  }
}
new.frame<-unique(new.frame)

new.frame$state<-as.character(beh.states$beh[match(new.frame$beh, beh.states$codes)])


ugo.frame <- read.csv("~/Desktop/SecSepSoundandGrids/20180731_XLPF1_F78M_2_M227B_2_extract.csv")

#pdf(paste0(dirname(filepath), "/", basename(filepath), ".pdf"), height = 8, width = 15)
ggplot(ugo.frame, aes(fill = Label))+geom_rect(aes(xmin=StartTime, xmax=EndTime, 
                                ymin=as.numeric(as.factor(Label)), 
                                ymax=as.numeric(as.factor(Label))+1))+theme_bw()+
  labs(title = basename(filepath))
dev.off()




    
    

