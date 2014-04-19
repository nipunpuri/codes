pollutantmean <- function(directory , pollutant , id = 1:332){

final <- rep(NA , 10000)
  for(i in 1:length(id)){
    
    
  temp <- paste(directory , "/" , sep = "")   ##specdata/
  temp1 <- sprintf("%03d" , id[i])               ##changes 1 to 001
  filename <- paste(temp , temp1 , ".csv" , sep = "")      ##specdata/001.csv
  file <- read.csv(filename)    ##this is the file, read this file
  
  if(pollutant == "sulfate"){
    mn <- file[,2]
    
  }
  else{
    mn <- file[,3]
  }
final <- append(final , mn)     ##joins the values vector of all the files
}   ##for loop ending
final1 <- mean(final ,na.rm = T)
return(final1)
}    ##function ending
