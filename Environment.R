#environment : 

#It is virtaul space where all the object are stored 
#default evnir R_GlobalEnv 

#some R Commands for environment 
environment() #returns current environment

#list objects
ls()
objects()

#create new Environment
demo <- new.env()

#assign object to the environment 
assign("b",c(10, 20 , 30) , envir = demo)

#check that object e3xists
exists("b" , envir = demo)

#access that object 
get("b" , envir = demo)
demo$b

#remove object 
rm(length , length1)
rm("b" , envir =demo)


#save & load objects
#There are different functions/methods to save objects on the file or disk

#1.save() :
#it is built_in function in r 
#it create .RData file , in which we can store all the objects in this files
#later we can load that file using load() function
#syntax : 
save(obj1 , obj2 , file = "filePath")

#example :
save(v8 , v9 , file = "objects.RData")
View("objects.RData")

#load() : it is used to load objects from file to R environment
#it is built-in function in R 
#syntax : 
load(file = "filePath" , envir = environmentName)

#example : 
load(file = "objects.Rdata" )
ls(demo)

#save.image() : 
#it is an extension of save() 
#it also create .RData file but in which we can only sotre current workspace files
#it is buil-in function in R 
#save.image() 
save.image(file = "filePath.RData")

#example : 
save.image(file = "envir.RData")
View("envir.RData")
load(file = "envir.RData" , envir = demo)
View(demo)


#saveRDS() : 
#it is built_in function in R 
#it create .Rds file in which , we can only store one object 
#RDS stands for R Data Serialization 
#to read saveRDS files we can use readRDS() function 
#syntax : 
saveRDS(objectName , file = "filePath.Rds")
#syntax : 
ReadRDS(file = "filepath.Rds")

#example:
saveRDS(x , file = "x.Rds")
rm(x)
x <- readRDS("x.Rds")
x

#working directory in R : it is default path in computer system to store objects and other variables
#when we import dataset then it  is assumed that the data is present in working directory 
#we have a signle working directory also called as current working directory 
#command for working directory : 
getwd() #returns current working directory 
setwd() #it is used to set new working directory or change existing one 

#syntax : 
setwd(dir = "path")

