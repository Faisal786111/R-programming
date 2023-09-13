install.packages("XML")
library("XML")
library("methods")

#fetch xml file using xmlParse()
student <- xmlParse("student.xml")
student

#fetch root node using xmlRoot()
rootNode <- xmlRoot(student)
rootNode

#fetch data using root node 
print(rootNode[[1]]) #reutrns the first subNode
print(rootNode[[1]][[3]])#returns grade elements of 1st subNode

#convert xml to dataframe
studentdf <- xmlToDataFrame("student.xml")
studentdf

#to export data to xml use kulife package
install.packages("kulife")
write.xml(studentdf,file="newFile.xml",row.names=FALSE)
