#mean , median & mode with syntax & example 
1.mean 

syntax :
  
  mean(x , na.rm = FALSE)
x = vector 
na.rm = it used to remove not available values in a vector by default FALSE

v1 <- c(10 , 20 , 30 , NA)
v1

fomula  
  mean = sum of elements / count of elements

mean(v1 , na.rm = TRUE)

2.median 
it is used to find midle most value in data set/vector
if the no of elements in data set is odd then median value would be a central value 
and if it is even then the median value would be the average of two central elements in data set

syntax 
  median(x , na.rm = FALSE)
  x = input vector 

formula  
  medianOdd = central element
  medianEven = two central elements in data set / 2 

median(v1 , na.rm = TRUE)

v2 <- c(10 , 20 , 30 , 40 )


mode : there is not built in function for mode
It is used to find the value which has highest no of occurances
we can use other built in fucntions to calculate mode value 

example 

v3 <- c( 10 , 10 , 20 , 30 , 40)
v3Freq <- table(v3)
v3Freq

names(v3Freq)[which(v3Freq == max(v3Freq))]

Anther method/aproach :
use "modeest" package which provides a method to calculate mode value 

install.packages("modeest")
library("modeest")

syntax 

  mfv(x , na.rm = FALSE)

mfv(v3)
