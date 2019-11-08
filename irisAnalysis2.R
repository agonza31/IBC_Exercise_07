#solution to problem 2, exercise 7

#function that counts number of observations for a given species
# inputs: fileName = name of file, specName = species to count
# observations for
specObs<-function(fileName,specName){
  data<-read.csv(fileName)
  return(length(which(data$Species==specName)))
}

#function that returns a dataframe for flowers with Sepal.Width
#greater than a value specified by the function user
# inputs: fileName = name of file, sepalWidth = sepal.Width
sepalWidths<-function(fileName,sepalWidth){
  data<-read.csv(fileName)
  data2<-data[data$Sepal.Width>sepalWidth,]
  return(data2)
}

#function that write the data for a given species to a comma-delimited
#file with the given species name as the file name
#column names included at top of each ".csv" file.
writeData<-function(fileName){
  data<-read.csv(fileName)
  for(num in 1:nrow(data)){
    if(num %% 50 == 1) bool <- TRUE
    else if(num > 1) bool <- FALSE
    write.table(data[num,],file=paste(data[num,5],".csv",sep=""),col.names=bool,sep=",",append=TRUE)
  }
}