#run rm(list=ls()) then rerun the following code to see this example

#setting the working directory and reading in a .DAT file.
getwd()
setwd("/Users/Natha/Desktop/RCode")

HousePrice<- read.table("houses.DAT")
print(HousePrice)

#using the scan function
#"" indicates a character vector while the zeros indicate numeric vectors
#the list argument is a dummy structure that establishes the mode of the three vector
inp<-scan("input.DAT", list("",0,0))
print(inp)

#now we separate the data into three separate vectors
label<- inp[[1]]
xscan<-inp[[2]]
yscan<-inp[[3]]

#___________________________________________________________________
#run rm(list=ls()) then rerun the following code to see this example
#rm(list=ls())
inp<-scan("input.dat", list(id="", x=0, y=0))

#if you wish to access the variables separately they may either be re-assigned to variables in the working frame
#or the list may be attachhed at osition 2 of the searc path.
label<- inp$id
xscan<-inp$x
yscan<-inp$y

#__________________________________________________________________
#see a list of data sets available in R
data()
library(datasets)
data(women, package="datasets")

#editing data
xnew<- edit(women)



