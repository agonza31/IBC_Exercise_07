#solution to problem 2, exercise 7

#function that counts number of observations for a given species
# inputs: data = name of dataset, specName = species to count
# observations for
specObs<-function(data,specName){
  return(length(which(data$Species==specName)))
}

#function that returns a dataframe for flowers with Sepal.Width
#greater than a value specified by the function user
# inputs: data = name of dataset, sepalWidth = sepal.Width
sepalWidths<-function(data,sepalWidth){
  return(data[data$Sepal.Width>sepalWidth,])
}

#function that write the data for a given species to a comma-delimited
#file with the given species name as the file name
#column names included at top of each ".csv" file.
#inputs: data = name of dataset
writeData<-function(data){
  for(num in 1:nrow(data)){
    if(num %% 50 == 1) bool <- TRUE
    else if(num > 1) bool <- FALSE
    write.table(data[num,],file=paste(data[num,5],".csv",sep=""),col.names=bool,sep=",",append=TRUE)
  }
  return()
}