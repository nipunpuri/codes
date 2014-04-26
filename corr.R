corr <- function(directory , threshold = 0){
    
    cor1 <- NA
    for(i in 1:332){
        
        
        temp <- paste(directory , "/" , sep = "")   ##specdata/
        temp1 <- sprintf("%03d" , i)               ##changes 1 to 001
        filename <- paste(temp , temp1 , ".csv" , sep = "")      ##specdata/001.csv
        file1 <- read.csv(filename)    ##this is the file, read this file
        file <- na.omit(file1)
        row <- nrow(file)  ##the number of rows
        
        if( row >= threshold ){
            cor <- cor(file[ ,2] , file[ ,3])
                              }
        else next
        cor1 <- append(cor1 , cor)
        

                    } 
    cor1 <- na.omit(cor1)
    return(cor1)
}

##function ending

corr("specdata" , 10)

