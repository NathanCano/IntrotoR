#dimension attribute, creating a 3x5x100 array
z<-1:1500
dim(z)<- c(3,5,100)
print(z)

#indexing arrays
#selecting the entire array
z[,,]

#selecting only a the first value
z[1,1,1]

#selecting only the last value
z[3,5,100]
dim(z)

#indexing matrices
#generate a 4 by 5 array.
x<- array(1:20, dim=c(4,5))
print(x)

#create a 3x2 index array
i<- array(c(1:3,3:1), dim=c(3,2))
print(i)

#extract i from x
print(x[i])

#replace those elements with zeros
x[i]<- 0
print(x[i])

#combine arrays
a<-array(1:4, dim=c(2,2))
print(a)
b<-array(1:4, dim=c(2,2))
print(b)
c<-cbind(a,b)
print(c)

#creating an array of all zeros
array(0, dim=c(10,10,10))

#Matrix multiplication
c<- c(2,2,3,3,3,2)
dim(c)<- c(3,2)
print(c)
#create the transpose
f<-t(c)
#multiply
t<- f%*%c

#see the number of rows and columns in a matrix

nrow(t)
ncol(t)

#find a vector with the diagonol values in matrix t
diag(t)

#create a matrix with the diagnol values of vector exp
exp<- c(1,2,3,4)

matrixvect<-diag(exp)
print(matrixvect)

#getting eigenvalues and eigenvectors simultaneously and alone
eigen(matrixvect)

eigen(matrixvect)$values

eigen(matrixvect)$vec

#perform a singular value decomposition on matrix matrixvect

svd(matrixvect)

#now find the determinant

det(matrixvect)

#combining matrices by columns, then combining the same matrix by rows
mat1<-c(1,2,3,4)
dim(mat1)<- c(2,2)
print (mat1)
mat2<- c(1,2,3,4)
dim(mat2)<- c(2,2)
print(mat2)
cbind(mat1,mat2)
rbind(mat1,mat2)

#creating an array and coercing it back into a vector

vec1<- c(1,2,3,4,5,6)
array1<- array(vec1, dim= c(1,2,3))
print(array1)
back<- as.vector(array1)
print(back)

#an alternative way to coerce an array back into a vector
c(array1)

#creating frequency table

state<- c("cali", "oreg", "new", "cali", "oreg", "new", "oreg", "new", "cali", "oreg")
statef<-factor(state)
levels(statef)
statefr<- table(state)
print(statefr)
pay<-c(10,11,12,10,11,12,11,12,10,11)
incomef<- factor(cut(pay, breaks=c(9,10,11,12)))
print(incomef)

tabley<- table(incomef, statef)
print(tabley)






