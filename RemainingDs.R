#Factor : to repsent categorical data as levels 
#labels : charactor vector which is associated with unique integers 
#which is stored in it 

#syntax :
#factor(vector , levels =NULL , ordered = FALSE )

#create factor
book <- factor(c("Hindi","English","Urdu"))
book
str(book)


#Add more levels in exxisting factor using levels():

book1 <- factor(c("green","red","blue","green"),levels = c("green","blue","red","yellow"))

#update factor
book1[5] <- "yellow"
levels(book1)
book1

labels(book1)

#lenght function
length(book1)

#read factor
levels(book)
book

#access factor
book1[3]
book1

#exclude element from vector
book[-1]


#List : 1D DS , contains heterogeneous elements and it's type of vector
#syntax : list(item1 , item 2 , item3)

#creation of list
my_list <- list(name = c("faisal","harsha","sujal","shreeya"),age = c(10,20,30),dept=c("Co","It","rubber"))

#read
my_list

#access only name values
my_list["name"]
#$name
#[1] "faisal"  "harsha"  "sujal"   "shreeya"
my_list[1]
my_list$name
my_list

#access only age values
my_list["age"]
my_list[2]
my_list$age
my_list[(2)]


#update list
my_list$dept[3] <- "co"
my_list$dept[4] <-"lather"
my_list[["dept"]][[4]] <- "it"
my_list


#subseting of data [[]]
#if you don't want show the component name in the o/p
#then use subsetting of data [[]]
my_list[["name"]]
#[1] "faisal"  "harsha"  "sujal"   "shreeya"

#without using subseting of data [[]]

my_list["name"]
#$name
#[1] "faisal"  "harsha"  "sujal"   "shreeya"


#access mulitple columns means components
my_list[1]
my_list[c(1,3)]

my_list

#to add component name we use names()
names(my_list) <- c("names","rollno")
my_list$names
my_list$rollno


#Exclude means delete component from list
my_list1 <- my_list[-1]
my_list1

#to display 3rd element of the name
my_list$names[3]

#lenght of list
length(my_list)

#str
str(my_list)


#add name elements into another list
list1 <- my_list$name #assigning all the values which is present in the name component
list1 <- my_list["name"] #assigning both component name and values also 
list1 <- my_list[1] #it is an index of name 
list1
#$name
#[1] "faisal"  "harsha"  "sujal"   "shreeya"

class(list1) #list


#convert list to vector
v1 <- my_list$name #assigning all the values which is present in the name component
v1 <- my_list[["name"]]
v1
class(v1) #character vector
#[[]] is used to perform all vector operation by 
#storing data in another variable

#work as same as class()
typeof(my_list) #list
typeof(my_list[[1]]) #character why bcoz it contains character elements
typeof(my_list[["dept"]])

#how to insert new component existing list
my_list
my_list$per <- 90:95
my_list[4]
my_list$per
my_list[["per"]]

my_list["add"] <- c()
my_list$add <- c("mumbai","bandra","mulund")
my_list$add
my_list[["add"]]
my_list[[5]]

#delete component from the list
my_list <- NULL #used to delete all components from the list
my_list$per <- NULL #single component is deleted
my_list$per
my_list$name[-2] #exclude by using negative indexing

#lenght list
length(my_list) #returns how many components present
length(my_list[[2]])
length(my_list$name)

#Data Frame : 2Ds Ds , that contains heterogeneous elements , 
#repsent in the form of table , all rows and columns must be equal

#diff : list and data frame : 
#list can be different length
#data frame equal length

#syntax
#data.frame(column1 = v1 , columne2= v2 .... columnN = vN)

#create Data frame
stud <- data.frame(name = c("faisal","harsha","shreeya","sujal"),rollNo = 1:4,dept = c("co","it","lather","civil"))
str(stud)
class(stud)

#read data frame
stud

#access data frame columns and elements
stud$name
stud["name"]
stud[1]

#update data frame : stud[rows,cols] , stud$colName
#alter the name of harsha by nargis in data frame 
stud[2,"name"]<- "nargis"
stud[2,1]<- "harsha"
stud$name[2] <- "nargis"
stud

#Delete data frame : colunms
stud[-3]
stud$dept = NULL
stud

#How to insert rows and columns in data frame : use rbind() & cbind()
#in data frame : Each row is different 
#list() is used to store heterogeneous values , elements
#C() is used to store homogeneous elements

#row insert : rbind(dataframe , list(values))
stud
stud1 <- rbind(stud,list("harsha",5,"lather"))
stud1

#if you want to combine two tables use merge() or rbind()
#rule : both tables must have same columns names 
stud["name"] <- "names"
studnew <-rbind(stud,stud1)
studn <- merge(stud,stud1)
studn
studnew

#column insert : 
#cbind(dataframe , colname =c(values))
stud
stud <- cbind(stud,add=c("mumbai","pune","bandra","mahim"))


#other way just use $ operator 
stud$no <- 1:4
stud

#delete row col from data frame exclude : using negative indexing
stud1[-6, ] 

#to remove duplicate rows use unique()
studn
unique(studn)

#sort function is used in the data frame 
#order function is used :
stud
stud[order(stud$rollno , decreasing=TRUE),]

#structure str() will give the totale no of col rows in data frame
str(stud)

#without condition
stud[c(1,4),]
stud[,c(1,2)]

#with condition : subset(dataframe,condition)
#using subset we can check/specify the condition
stud
subset(stud,dept == "co")
subset(stud,add == "mumbai" & dept =="co")
subset(stud,add == "mumbai" | dept =="it")


#join in dataframe :

s1 <- data.frame(id=1:3,name = c("faisal","sujal","harsha"),dept=c("co","it","lather"))
s2<- data.frame(id=1:5,name = c("faisal","sujal","harsha","shreeya","abbas"),add=c("mumbai","bandra","mahim","agraa","vikrohli"))
s1
s2

#1. inner_join : reutrns the matched from both table
#use merge(x=leftTable , y=rightTable,by="colName")
new <- merge(x=s1,y=s2,by="id")
new

#how to execute inner_join() : we have to install dplyr library
#syntax :  inner_join(x=rightTable , y =leftTable,by = colname)
library("dplyr")

new <-  inner_join(x=s1,y=s2,by="id")
new

#2.left_join : it return all the elements from left table and matched 
#              values from righttable
#syntax : merge(x=leftTable,rightTable,by=colname,all.x=TRUE)

new <- merge(x=s2,y=s1,by="id",all.x = TRUE)
new

new <- left_join(x=s1,y=s2,by="id")
new

#3.right join : it returns all the elements from right table and matched values 
#             from rightTable

new <- merge(x=s1,y=s2,by="id",all.y=TRUE)
new

new <- right_join(x=s1,y=s2,by="id")
new

#4.Full jion : it returns all the lements from both dataframes and also matched values

new <- merge(x=s1,y=s2,by="id",all = TRUE)
new

new <- full_join(x=s1,y=s2,by="id")
new

#5.anti_join : returns the rows that are present in table1 & not in table2
#we cannot use merge()
#for this we have to use anti_join()
new<- anti_join(x=s2,y=s1,by="id")
new

#6.Cartision join : returns all the possible combination from both the dataframes
#there is not cartision join function
#we have use merge()
new <- merge(x=s1,y=s2 , by=NULL)
new

#change the name of the column :
#1.colnames(df)[index] <- value
stud
colnames(stud)[2]<-"rollno"
stud

#2.names() works similar as colnames
names(stud)[1]<-"Name"
stud

#3.setNames(): if you want to change all the column names then 
#              u should use setNames()
#syntax : setNames(df,c(colnamesss))
new<- setNames(stud,c("Name","RollNo","Dept","Address","NO"))
new


#Array : N-dimensional Ds, contains homogeneous elements

#        1D array is a vector and 2d is a matrix
#syntax : array(data,dim=c(rowsize,colsize,matrix),dimnames)
# "array" is function which is used to create arrray
# "data" are input value from which array is created , it can be a vector or 
# no sequence
# "dim" parameter specifies dimensions of array .i.e no of rows , no of cols , no of matrix
# "dimnames" parameter used to specify the names of the dimensions


arr <- array(1:10,dim=c(2,5,2), dimnames = list(c("row 1","row 2"),c("col1","col2","col3","col4","col5"),c("matrix1","matrix2")) )
arr
#output:
#[,1] [,2] [,3] [,4] [,5]
#[1,]    1    3    5    7    9
#[2,]    2    4    6    8   10
class(arr)

#combiantion of array 

array <- array(1:24,dim = c(3,2,2))
array

ar<-1:10

array <- array(c(arr,ar),dim=c(2,2,4))
array

#Assigning names to rows and columns & matrix
arr
rownames = c("first row", "second row")
colnames = c("column1", "column2", "column3", "column4", "column5")
matrixnames = c("mone", "msecond")

arr1 <- array(1:20, dim = c(2, 5, 2), dimnames = list(rownames, colnames, matrixnames))
arr1

#access and display array elements : 
#elements of array can be accessed by the row_index , col index and matrix level
#syntax : array_name[row_name , col_name, matrix_level]

arr2 <- array(1:10,dim=c(2,3,2))
arr2

#print first matrix
arr2[,,1]


arr2[2,3,1]

arr2[2,2,2]

arr2[2, ,1 ]

arr2[,2,1]

arr2[1,,]

arr2[,2,1]

arr2[c(1,2),c(2,3),2]

#array arithematic :

a <- array(1:4,dim=c(2,2))
b <- array(5:8,dim=c(2,2))
c <- array(9:12,dim=c(2,2))
a+b+c
sum(a)
max(a)
min(a)
nrow(a)
ncol(a)
a&b
a|b
a-b-c
a/b/c
a*b

a<- array(1:4,dim=c(2,2,2))
a
#add 1st and 2nd matrix of an array
a[,,1] + a[,,2]

a <-a[1,,1] + a[1,,2]
a

#change dim of array use dim(array_name)
a <- array(1:4,dim=c(2,2,3))
a
dim(a)<- c(3,3,2)

arr3 <- array(c(10,8,2),dim=c(2,2))
arr3
#order : it provides the index number based on the sorted way
sort(arr3)
order(arr3)

#rank : it provides index number after sorting of elements components
rank(arr3)

#matrix : 2D DS , homogeneous ds , 
#syntax : matrix(data,nrow,ncol,dimnames,byow = True)

#creation of matrix
m1 <- matrix(1:4,nrow = 2,ncol=2)
m1

m2 <- matrix(5:8,nrow=2,ncol=2)
m2

#matrix arithematic : matrix must have same no of rows and cols
m1+m2
m1-m2
m1%*%m2
m1/m2

#miscellaneous functions :
min(m1)
max(m1)
rowSums(m1)
colSums(m1)
is.matrix(m1)
nrow(m1)
ncol(m1)

