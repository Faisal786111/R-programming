#OOP in r :
#OOP stands for object oriented programming
#R has 3 object orient systems : S3 and S4 and reference class

#S3 class :
#It has no formal definition
#It is used to overload any function
#Syntax to create 
s3 <- list(rno = 1, name = "faisal")
s4 <- list(rno = 1, name = "faisal",dept="CO")
class(s3) <- "Costudent"
class(s4) <- "Costudent"
class(s3)

print(s3)

print.Costudent= function(x){
  cat("Rno :",x$rno,"\n")
  cat("Name :",x$name,"\n")
  cat("Dept :",x$dept,"\n")
}

print(s3)
print(s4)

#Function to create object of a class
createObject = function(rno , name , dept){
  obj = list(rno = rno , name = name , dept = dept)
  attr(obj,"class") = "Costudent"
  obj
}
s2  = createObject(3,"Faizan","IT")
s2

#Add another attribute into the s2 object
attr(s2,"phone") <- c(1234567890)
phone_no <- attr(s2,"phone")
phone_no

#S3 Class inheritance 

#When new S3 class is derived from old S3 class then it can only inherits
#the functions/methods of old S3 class
#It cannot inherit the data memeber/attributes of old class

#Syntax to create child S3 class(new class):
#Step1 : create object :
obj <- list(item1, item2 .. itemN)

#step2 : create a new S3 class from old S3 class
class(obj) = c("new_class","old_class")

#example :
s5 <- list(rno = 5, name = "Tahab",dept = "IT")
class(s5) = c("ITstudent","Costudent")
class(s5)

#before overloading the function of Costudent class
print(s5)

#overload print function of Costudent in ITstudent class
print.ITstudent = function(x){
  cat("Student ",x$rno ," is from ",x$dept," dept\n")
  cat("Name :",x$name,"\n")
}
print(s5)

#S4 Class :

#It has formal definition(structure)

#Syntax to create S4 class :use setClass()
setClass("class_name",slots=list(attribute1_name ="datatype"...attributeN="datatype"))

#example :
setClass("Book",slots=list(bid = "numeric",bname="character"))
#The Book class will created with members of bid and bname

#to create object of S4 class use new keyword
b1 <- new("Book",bid = 1,bname= "C")
b1

#displays data members with the data type
getSlots("Instagram")

#displays data members without the data type
slotNames("Instagram")
slotNames(i1)

#change the value b1 attribute : use @ and slot method
"@"(b1,"bid") <- 2
slot(b1,"bid") <- 3
b1

#Syntax to create function/method of S4 class
setMethod("print","Book",function(x){
  cat("Bid : ",x@bid,"\n")
  cat("Bname :",x@bname,"\n")
})

print(b1)

#S4 Class inheritance :

#Child class can inherit all the methods of base class as well as all 
#the data members of object

#Syntax to create child class :
setClass("Author",slots=list(authorId = "numeric",authorName = "character"),contains="Book")

#create the object of Author class :
a1 <- new("Author",bid=4,bname="C++",authorId=1,authorName="Dilip")

#overload the function of Book class in Author class :
setMethod("print","Author",function(x){
  cat("Book id :",x@bid,"\n")
  cat("Book name :",x@bname,"\n")
  cat("Author Id :",x@authorId,"\n")
  cat("Author name :",x@authorName,"\n")
})

print(a1)
