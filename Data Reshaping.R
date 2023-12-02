#Data Reshaping : 
  
#1.it is process of organize data in the form of rows & cols of dataframe for analysis , modelling
#2.it can be done by using melting , casting & merging 
#3.it involves transform the data from ont struct to another struct . such as convert wide to long & vice versa
#4.two types of data format in R . wide & long data format 
#5.wide data format in which each rows of data frame represent single entity , which is organized into the no of columns
#6.long data format dataframe consists of multiple rows of single entity , all details are divided into the no of rows 
#7.melt() & cast() is used to perform data reshaping 
#8.reshape & reshape2 package is required to use melt() & cast()
#9.melt() is used to convert wide data format into the long data format
#10.cast() is used to convert long data format into wide data format 
#11.melt() syntax : 
#  melt(dataframe , id = constantVariables , variable = other-variable)
#12.cast() syntax : 
#  cast(dataframe , constant ~ other-variable)

#example : 
  install.packages("reshape","reshape2")
library("reshape","reshape2")

rollno <- c("FS1","FS2","FS3","SS1","SS2","SS3")
class <- c("FS","FS","FS","SS","SS","SS")
NMA <- seq(50 , by = 2 , length.out = 6)
DAR <- seq(51 , by = 2 , length.out = 6)

score <- data.frame(rollno , class , NMA , DAR)
score

#convert wide data format to long data format
melt.score <- melt(score , id = c("rollno","class") , variable = "subjects" )
melt.score

#convert long data format to wide data format 
cast.score <- cast(melt.score , rollno + class ~ subjects)
cast.score