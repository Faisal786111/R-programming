 #Vector : 

#1 DS 
#contains homogeneous elements
#types of vector : integer , complex , numeric , character , logical 
#create vector : by using : , c() , seq() , assign() , rep()
#common properties of vector :
#length() : returns lenght of vector
#typeof() : returns vector type 
#attributes() : returns names of element in the vector 
#is() : used to check whether vector is specified type 
#class() : is used to identify the type of vector or object
#Dealing with NA values : is.na() , na.omit()
#sorting : sort() 
#vector indexing : single Element indexing , multiple element indexing , negative indexing 
#vector modify 
#vector delete : negative index , rm() 
#scan()



#creation of vector 

#1.sigle elemnt vector :
v1 <- "fruit"
class(v1)
typeof(v1)
length(v1)
is.numeric(v1)
is.na(v1)
na.omit(v1)

#2. using : (colon operator):
v2 <- 1:10
v2

#3. seq() 
#odd numeric vector
v3 <- seq(1 , by = 2 , length.out = 3 )
v3

#even numeric vector
v4 <- seq(2 , by = 2 , length.out = 4)
v4

#using from & to
v5 <- seq(1 , 10 , by = 2)
v5

#4.assign()

#syntax : 
assign("VariableName" , data)

assign("v6" , 1:10)
v6

assign("v7" , c(10 , 20 , 30))
v7

#5.using c()
v8 <- c(v6 , v7)
v8

#unique is used to avoid redundency of element 
v8 <- unique(v8)
v8

#6.rep()
rep(c(1,2,3) , time = 2)
rep(c(1,2,3) , each = 2)

#access elements of vector :
#vector indexing : 
#signle element indexing 
v8[2]
names(v8)[c(1,2,3)] <- c("First","Second","Third")
v8
v8["First"]
attributes(v8)

#update vector elements 
v10
v10[1]<- 10 
v10
names(v10)[c(2,3)] <- c("second" , "third")
attributes(v10)
v10["second"] <- 20

#multiple element indexing 
v8[c(2,4,6)]

#negative indexing  : delete elements in the vector 
v8[c(-1  , -6)]

#rm() is used to delete elements
rm(v7)
v8 <- NULL
v8


#dealing with NA values 
v9 <- c(1 , 2, NA , NA , 3)
is.na(v9)
v9 <- as.numeric(na.omit(v9))
v9

#sorting : sort()
v10 <- seq(0 , by = 2 , length.out = 10)
v10
sort(v10 , decreasing = TRUE)
sort(v10)

#scan() : it is built-in function which is used to take inputs from the user or console. 
#by using this function we can read data from the user or file also 
#syntax : 
scan(file = "" , what = dataType  , n = -1 )

#parameter : 
file = this parameter is used to specify name of the file from which the data is to be read 
what = it is used to specify what type of data should be used 
n = is used to specify the no of element to be read or -1 mean read all available data  

#example : 
v11 <- scan(what = integer() , n = 3)
v11

v12 <- scan(what = character() , n = 3)
v12

v13 <- readline("Enter the no : ")
class(v13)
