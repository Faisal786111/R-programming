#Factor : 
#it contains categorical data :nominal or ordinal 
#it can contains integer or character type of data 
#factor() is used to create factor by providing vector as an input
#syntax : 
factor(x , levels = NULL , labels , ordered , exclude  , nmax )

v11 <- c("Female" , "Male" , "Female" ,"Male")
v11

#creation of factor 
gender <- factor(v11 , levels = c("Male" , "Female" , "transgender"))
gender

levels(gender)
labels(gender)

#access 
gender[1]
gender[2]

#update : add only those elements which exist in the level
gender[5] <- "transgender"

#append element  based on sepcified length

#syntax : 
append(x , values , after = length(x))

#example  :
append(gender , "Male" , after = length(data))

#remove elements 
gender[c(-1,-2)]
gender <- NULL
gender
rm(gender)
