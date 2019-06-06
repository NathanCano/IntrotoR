#empty vectors with a mode of character and numeric
x<- character()
y<- numeric()

#functions to find the mode, length and attribute of objects
mode(x)
length(x)
attributes(x)

#changing the mode of an object from digits to characters.
z<- 1:10
digits<- as.character(z)
mode(digits)

#changing the mode back to numeric
numeric<- as.integer(digits)
mode(numeric)

#changing the length of objects
a<- 1:4
a[5]<- 5
print(a)

#truncating an object
b<- 1:5
c<-(2*b)
length(c)<- 4
print(c)

#treat c as a 2x2 matrix by selecting and modifying its dimension attribute
attr(c, "dim")<- c(2,2)
class(c)
print(c)

#unclass c
unclass(c)
class(c)
summary(c)

