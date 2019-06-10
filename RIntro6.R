#lesson 6
Lst<- list(name="Fred", wife= "Mary", no.children=3, child.ages=c(4,7,9))
print(Lst)
length(Lst)

Lst$name
Lst[["name"]]
Lst["name"]

#names of components can be abbreviated down to the minimum number of letters needed to identiffy them uniquely. 
Lst$na

#creating a list of vectors
x<- c(1,2,3,4,5)
y<- c(6,7,8,9,10)
z<- c(11,12,13,14,15)

listxyz<-list(first=x, second=y, third=z)
print (listxyz)

#concantinating lists (lists of lists)
list.list<- c(Lst, listxyz)
print(list.list)

#making data frames

state<- c("cali", "oreg", "new", "cali", "oreg", "new", "oreg", "new", "cali", "oreg")
statef<-factor(state)

incomes<-c(10,11,12,10,11,12,11,12,10,11)
incomef<- factor(cut(incomes, breaks=c(9,10,11,12)))

accountants<- data.frame(home=statef, loot=incomes, shot= incomef)
print(accountants)

#attach and detach function
accountants$loot
attach(accountants)
loot
#now run the detach function to reverse this change
detach(accountants)
#run loot to get an error message and confirm that the change has been made.
loot
#use the search function to see which packages, data frames and lists have been attached.
search()
#now attach accountants to view the change in the search pathway by running the search() function once more.
attach(accountants)
home
search()
