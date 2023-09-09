#import and export csv(comma seperated values) file 
getwd()
setwd("D:/study material/5TH SEM NOTES/DAR/RScripts")
getwd()

#syntax :
#write.csv(data,file = 'file-path',row.names = FALSE)
#data: The data frame or data you want to save.
#file: The file path where you want to save the CSV file.
#row.names: Setting it to FALSE ensures that row names (if any) are not included in the CSV file.

#read.csv("file-name")


dataframe <- data.frame(
  id = c(1,2,3,4),
  name = c("faisal","harsha","sujal","shreeya"),
  dept = c("IT","CO","CIVIL","LATHER")
)
dataframe


write.csv(dataframe, file="D:/study material/5TH SEM NOTES/DAR/RScripts/first.csv",row.names = FALSE)

read.csv("D:/study material/5TH SEM NOTES/DAR/RScripts/first.csv")


#import another csv file and manipulate the data
second <- read.csv("second.csv")
second
str(second)
class(second)


second <- subset(second, Salary <= 60000)
second
list <- list(111,"John","Khan","CO","HR",70000,"2019-09-01")

#add row
second <-rbind(second , list)
second<- NULL

#add column
second <- subset(second , EmployeeID <107)
second

second$address <-   list("Pune","Mumbai","Wadala","Bandra","Kharghar","Mulund")
second

#find the employee which has the maximum salary
emp <-subset(second,Salary ==max(Salary))
emp$FirstName
emp1 <- subset(second,Salary == min(Salary))
emp1$FirstName

second <- data.frame(second)
second
write.csv(dataframe,file="~/second.csv",row.names = FALSE)
getwd()
