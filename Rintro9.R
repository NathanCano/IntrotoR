#for this example we will use examples from youtube, since the intro to R manual does not provide any clear, applied examples
#video link: https://www.youtube.com/watch?v=h987LWDvqlQ
for(i in 1:5){
  print(i^2)
}

#we can also use a concantinated vector

for(i in c(-3,6,2,5,9)){
  print(i^2)
}

#we can also define the vector beforehand, instead of including it in the loop
x<-c(-3,6,2,5,9)
for(i in x){
  print(i^2)
}

#we can also concantinate the outcome
for(i in x){
  print(c(i, i^2))
}
#we can also store the output of our loops, like so...
Storage<-numeric(5)
for(i in 1:5){
  Storage[i]<-i^2
}
print(mean(Storage))

#converting degrees celsius to degrees farenheight
for(DegC in c(-3,6,2,5,9)){
  DegF<-DegC*(9/5)+32
  print(c(DegC, DegF))
}

#using else statesments
Temp<- c(-4,5,10,-6,-40,30)
if(Temp>0){
  print("warm")
}else{
  print("not so warm")
}

#we get an error message, to fix this, use the following:
for(Temp in c(-4, 5, 10, -6, -40, 30)){
  if(Temp>0){
    print("warm")
  }else{
    print("not so warm")
  }
}

#an example with nested loops
#sets i value iterations
for(i in 1:3 ){
  #nesting a loop within
  for(j in 1:2){
    print(i+j)
  }#2
} #1


#_____________________________________________________
#while loops in R
#video link: https://www.youtube.com/watch?v=SJVrHumq0zc
#keeps running while statement is true

#run this code to clear objects in the workspace
#rm(list=ls())
x<-1
while(x<10){
  print(x)
  x<-x+1
}
#x ultimately equals 10 since the loop stops once the initial statement x<10 is no longer truw
#storing values from a while loop into a vector
#create an empty vector
rm(x)
Storage<-c()
x<- 1
while(x<10){
  Storage<-c(Storage, x)
  x<-x+1
}
print(Storage)

#nesting while loops
i<- 1
while(i<=2){
  j<-1
  while(j<=2){
    print(c(i,j))
    j<-j+1
  }
  i<-i+1
}

#creating an infinite loop
i<- 2
while(i<3){
  print(i)
}
#hit esc to cancel

#_____________________________________________________
#repeat loops in r

x<- 0
repeat{
  x<- x+5
  print(x)
  if(x==80) break
}
