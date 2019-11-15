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
sepalWidths<-function(data,taxa,value){
  subset<-data[data$Sepal.Width>value,]
  return(subset[subset$Species==taxa,])
}

#function that write the data for a given species to a comma-delimited
#file with the given species name as the file name
#column names included at top of each ".csv" file.
#inputs: data = name of dataset
writeData<-function(data){
  for(name in levels(data$Species)){
    write.table(data[data$Species==name,],file=paste(name,".csv",sep=""),sep=",")
  }
  return()
}