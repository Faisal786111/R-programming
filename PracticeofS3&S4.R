#practice of S3 and S4 class

#1. S3 class :

#It has no formal definition
#It is used to overload any function

#syntax to create S3 class
#First create the list for s3 class

s7 <- list(rno= 7,name = "A")
s8 <- list(rno= 8,name = "B",dept="Civil")
class(s7) = "CivilStudent"
class(s8) = "CivilStudent"

#syntax to create print mehtod for S3 class
print.CivilStudent = function(x){
  cat("Name :",x$name,"\n")
  cat("Rno :",x$rno,"\n")
  cat("Dept : ",x$dept,"\n")
}
print(s7)
print(s8)

#Function to create object of S3 class
createObject = function(rno, name , dept){
  obj = list(rno = rno , name = name , dept = dept)
  attr(obj,"class") = "CivilStudent"
  obj
}
s9 <- createObject(9,"C","Civil")
s9

#add additional attributes in the object 
attr(s9,"phone") <- c(1234567890)
phone_attr <- attr(s9,"phone")
phone_attr

#S3 Class inheritance :

#It can only inherits all the methods/functions of old S3 class
#It cannot inherits the data members of object & class

#syntax to create child S3 class :
#First the create a list object 

s10 <- list(rno = 10, name="D",dept="Lather")
class(s10) <- c("LatherStudent","CivilStudent")

print(s10)

#To overload function of CivilStudent class which is base use the following commands :
print.LatherStudent = function(x){
  cat("Student ",x$name ," roll no is ",x$rno," belongs to ",x$dept," department")
}
print(s10)

#S4 class :

#It has the formal definition 

#syntax to create S4 class :

setClass("Instagram",slots=list(id = "numeric",name = "character"))

#synatx to create object of S4 class : use new keyword
i1 <- new("Instagram",id = 1,name ="A")
i1

#Change the value of attribute
slot(i1,"id")<- 2
"@"(i1,"id") <- 1

#displays data members with the data type
getSlots("Instagram")

#displays data members without the data type
slotNames("Instagram")
slotNames(i1)

#Syntax to create print method for S4 class 
setMethod("print","Instagram",function(x){
  cat("Name ",x@name,"\n")
  cat("Id ",x@id,"\n")
})
print(i1)

#S4 class inheritance :

#The child class can inherit all the methods of old class as well as the data members of objects and class

#syntax to create child class :
setClass("User",slots=list(userId = "numeric",userName = "character"),contains = "Instagram")

#syntax to create object of child class :
u1 <- new("User",id = 2,name = "Instagram23",userId = 1,userName = "A")
print(u1)

#To overload function of Instagram class in to the User class use following commands :
setMethod("print","User",function(x){
  cat("User name :",x@userName,"\n")
  cat("User Id : ",x@userId,"\n")
  cat("Instagram Id : ",x@id,"\n")
  cat("Instagram Name:",x@name,"\n")
})
print(u1)
