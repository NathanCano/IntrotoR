#data structure- vector, this is an assignmeent statement using the function c()
x<- c(10.4, 5.6, 3.1, 6.4, 21.7)

#an alternative way to define a data structure
assign("y", c(10.4, 5.6, 3.1, 6.4, 21.7))

#you can also make assignments in the opposite direction

c(10.4, 5.6, 3.1, 6.4, 21.7)->z

#the following command will be printed and lost since it is not assigned to any object
1/x

#you can also create vectors using objects

a<- c(x,0,x)

#every item in x is multiplied by 2, repeated 2.2 times to reach the vector size of 11
# a is the longest vector so the length will be 11.
#1 is added to all 11 items in the vector
v<- 2*x + a + 1

#multiply everything.
prod(c(a,v,x,y,z))

#find the min and max values of v
min(v)
max(v)

#range displays both the min and max values simultaneously
range(v)
#mean calculates the average
mean(v)
#sort orders the vector from least to greatest
sort(v)

#pmax & pmin display the parallel min and max values for each spot in a vector object.
#the vectors must be of an equal length
pmin(v,a)
pmax(v,a)

#length displays the length of a vector
length(x)

#when manipulating complex numbers, use a complex number part. 
sqrt(-17+0i)

#creating sequences
#the colon operator is given priority in the mathematix (ex. (1-10) -1)
assign("n", 10)
Xx<-1:n-1
print(xx)
#the sequence function can also be used with various operators.
seq(1,10)
seq(from=1, to= 10, by = 2)
seq(from=1, by=3, length= 100)

#rep function can also be used to replicate objects in complex ways.
xxx<- rep(x, times = 2, each = 2)
print(xxx)

#logical vectors are good for inequalities, etc.
#values equal TRUE, FALSE, or NA
temp<- x>13
#logical vectors require the following conditions: >, <, >=, <=, ++, !=
# also &, and | (or)

#missing values
#analyze a vecor for missing values and non-numbers
is.na(x)

#is.nana() analyzes a vector for non-numbers
is.nan(x)

#character vectors
#character vectors use escape sequences, such as: \, \\, \n (new line), \t (new tab), \b (backspace)
#paste() creates a string vector with corresponding numbers
# the sep argument defines how the X/Y and numbers are separated.
labs<- paste(c("X", "Y"), 1:10, sep="")
print(labs)

#Index Vectors- used to select subsets of a vector.
yy<- x[is.na(x)]
print(yy)
#the printed expression demonstrates that all values are true.
#select the first 10 elements in x, and select the 2nd element in x.
x[1:10]
x[2]

#you can also create a vector that excludes certain values.
yyy<- x[-(1:3)]
print(yyy)

#using name() to create a labeled vector, then selecting specific sections of that vector.
assign("fruit", c(5, 10, 1, 20))
names(fruit)<- c("orange", "banana", "apple", "peach")
lunch<- fruit[c("apple", "orange")]
print(lunch)

#you can also use an index vector to perform an assignment on specific vector elements
#the following code changes all numeric values to 0s
x[is.numeric(x)]<- 0
print(x)






