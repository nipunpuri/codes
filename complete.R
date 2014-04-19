setwd("~/Documents")
complete <- function(directory , id = 1:332){
  count1 <- NA
  for(i in 1:length(id)){
    temp <- paste(directory , "/" , sep = "")   ##specdata/
    temp1 <- sprintf("%03d" , id[i])               ##changes 1 to 001
    filename <- paste(temp , temp1 , ".csv" , sep = "")      ##specdata/001.csv
    file <- read.csv(filename)    ##this is the file, read this file
    file <- na.omit(file)
    count <- length(file[,3])
    count1 <- append(count1, count)    ##joined the new count with the old
 }   ##for loop ending
 count1 <- count1[complete.cases(count1)]   ##since I defines count1 <- NA, it still consists of an NA and I need to remove that
 cc <- cbind(id, count1)##create a matrix
 cc <- as.data.frame(cc)
 colnames(cc) <- c("id" , "nobs")    ##give names to the columns
 return(cc)    ##return the data.frame
 }   ##function ending