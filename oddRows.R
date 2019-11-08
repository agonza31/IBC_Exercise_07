#solution to problem 1, challenge 7

#function returns odd rows of dataframe
#inputs: data = dataframe to get odd rows of
oddRows<-function(data){
  return(data[-(seq(2,nrow(data),by=2)),])
}