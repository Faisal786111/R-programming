#Vector 1d ds , that contains homogenous elements

v1 <- c(10,20,30)
v1

typeof(v1)

length(v1)

v1 <- c("a"=20,"b"=30)

attributes(v1)

is.integer(v1)
is.numeric(v1)

v2 <- c(10,20,NA,30,5)
v2
is.na(v2)

#1.Vector with single value:
Fruite <- "Apple"
Fruite
Name <-"Faisal"
Name

#2. Assigning values using C() :
Fruites<- c("Apple",'banana')
Fruites

Age <- c(12,13,14)
Age

#3. Numeric vector using colon (:) operator

Ages <- 1:10
Ages

#4. Create numeric vector using seq() function :

v3 <- seq(from = 1, to = 10)
v3

v4 <- seq (1,10)
v4

v4 <- seq(1,10,by=2)
v4

v5 <- seq_len(10)
v5

v6 <- seq(from=-5,to = 5)
v6

#5. create vector using assign() function :

 #assign("vecotr-name",values)
assign("a",10)
a

assign("a",c(10,20))
a

assign("a","faisal")
a

assign("a",c("faisal","Harsha"))
a

assign("a",TRUE)
a

#6. using rep() function:
rep(v1,3)

rep(v1, each=3)

rep(c("a","b"),2)

rep(c("a","b"),each=2)

rep(v1,times=c(2,3))

rep(c(1,3),each=3)

#deleting vector using rm()

rm(v1)
v1

#modifying vecctor elements:
v3[2] = 3
v3

#Delete the vector elements
v3[-2] #exclude elements by using - index

#sorting vector:
v7<-c(3,4,1,2,344,19191)
v7
sort(v7)
sort(v7,decreasing=TRUE)

 #Detecting NA values:
is.na(v2)

#Removing na values:
v8 <- na.omit(v2)
v8

#output
#10 20 30  5
#attr(,"na.action")
#[1] 3
#attr(,"class")
#[1] "omit"

#theory :
#The first line in the output shows the vector 
#without NA values while the next two lines show 
#additional information about the location of the NA values.

#Assigning names to vector components(elements)

v9<- c(1,2,3)
v9
names(v9)<-c("frist","second","thrid","fourth")
#'names' attribute [4] must be the same length as the vector [3]'
names(v9)<-c("first","second","thrid")
v9[c("first","second")]

#display first 5 elements
v1 <- 1:10
v1

AGE <- 1:10
AGE[1:5] #display first 5 elements

Ages

#vector indexing:

#1. sing element indexing:
v1<- c(10,20,30,40)
v3[1] #accessing first element

#2. mutiple element indexing:
v3[c(3,4)]#accessing 3 and 4 element

#3. negative indexing
rem_v<-v1[c(2,4)]#excluding 2 element from vector
rem_v
v1

#Reading data using scan():

#syntax :
#scan(file="",what="",n=-1,..)
#file:the name of file from which the data will be extract
#what : the DT of the elemtns to be read(eg:numeric,integer)
#n: no of data values to read use -1 to read all available data

a <-scan(n=5) #read numeric value
a <-scan(what=integer() , n=5) #read integer values
a
class(a)#this fucntion is used to check DT of a variable

a <-scan(what="" , n=1)
a
a <-scan(what=character() , n=1)
a

#Add new component / value to existing vector using append():

v<- c("Hell","world")
v
append(v,"Laptop",after=1)
append(v,"Laptop",after=length(v))

#c() to add new component
v1<-1:5
v1<-c(v1,c(5:10))
v1<-c(v1,c(5,6,8))
v1

v1<-c(v1,c(123))    
v1

#vector arithmetic:
a<-1:3
a
b<-1:3
b
a+b
print(a+b)
a-b
a*b
a/b
a<-a*10
a

v1 <- c,c(1(v10,20,30))

#Recycling Rule
#if two vectors are of unequal length , 
#the shorter one will be recycled in order 
#to match the longer vector.

a<-1L:3L # shorter vector Integer
a
b<-c(2.4,5,5.1) #longer vector numberi/double
b
c <-a+b
c
class(c)

#environment
#default : Global environment
environment()# display the name of current environment

objects(): #used to display list of all objects created and stored in any envir
ls()

demo<-new.env()
demo$a <-10

demo1<-new.env()
View(demo1)

demo$a
get("a", envir=demo)

ls(demo)
objects(demo)

assign("a",c(10,20),envir=demo)
demo$a

View(demo)

rm(a,Age)
rm(list=ls())
rm(a,envir = demo)
print(exists("a", envir =demo))
list=c("faisal","harsha")
a<-"faisal khan"
#save function :
save(a,file="demo.RData")
save(list,file="demo.RData")
load("~/demo.RData")
rm(list)


#save.image function
b<-1:5
c<-1:6
save.image(file = "demo.RData")

rm(list=ls())
load("~/demo.RData")

#saveRDS() function : it creates the .Rds file you can
#read using readRDS() function


a <- 10
b <- 20

saveRDS(c(a,b),file="demo1")
rm(a,b)
readRDS("~/demo1.Rds")
book <-readRDS("~/demo1") #it work as load() function
book

#working directory in 
getwd() #it returns current working directory path
setwd(dir = "D:/study material/5TH SEM NOTES/DAR/RScripts")
#to set path of dir use forward slash(/) within double qoutes 

getwd()


