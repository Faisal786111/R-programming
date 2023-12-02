#Array : 
#sytnax :
array <- array(data , dim = c(row , col , matrixlvl) , dimnames = list(rownames , colnames , matrixnames))

#creation of array 
rownames <- c("row1","row2","row3")
colnames <- c("col1","col2","col3","col4")
matrixnames <- c("lvl1","lvl2")
array <- array(1:24 , dim = c(3 , 4 , 2) , dimnames = list(rownames , colnames , matrixnames))
array

#access 

#syntax : 
array[row , col , matrix]

array[1,1,1] + array[1,1,2]
array[1 , , ]
array[ , 1 , ]
array[ , , 1]

#array arithmetic :

min(array)
max(array)
sum(array)
mean(array)
median(array)

#add 1st and 2nd matrix of an array
array[ , , 1] + array[ , , 2]
array
dim(array) <- c(4,4,4)

#modify
array[1 , 1 , 1] <- 10
array

#sortinng 
sort(array)
order(array) 

v12 <- c(2 , 3 ,1) # index : 3 , 1 , 2
sort(v12)
order(v12)# it provides index number based on the sorted way 

rank(v12)# it provides index number after the sorting of each component

v13 <- c(1 , 3 , 2) # 1 , 2 , 3
order(v13)
rank(v13)

#delete :
array <- NULL
array[-1 ,  , 1]
rm(array)
