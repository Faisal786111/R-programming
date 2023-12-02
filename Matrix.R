#matrix : 
#creating 
#common properties : length , str , typeof , class , is.matrix() , dim()
#naming row : rownames() , colnames() , khud sey bhi kr sktey hai 
#access
#update
#miscellaneous functions
#Adding rows & cols : rbind() , cbind()
#matrix 
#delete


#syntax : 
matrix(data , nrow , ncol , byrow = FALSE , dimnames = list(rownames , colnames))

#creation of matrix 
matrix(1:12 , nrow = 4 , ncol = 3 , byrow = TRUE)

#common properties of matrix 
length(matrix)
is.matrix(matrix)
str(matrix)
typeof(matrix)
class(matrix)
attributes(matrix)

#different ways assigning rows & cols names
matrix <-matrix(1:12 , nrow = 4 , ncol = 3 , byrow = TRUE , dimnames = list(c("r1","r2","r3","r4") , c("c1","c2","c3")))
matrix

rownames <- c("r1","r2","r3","r4")
colnames <- c("c1","c2","c3")

#odd numbers matrix
m2 <- matrix(seq(1 , by = 2 , length.out = 12) , nrow = 4 , ncol = 3 , byrow = TRUE ,dimnames = list(rownames , colnames))
m2

rownames(m2) <- c("row1","row2","row3","row4")
colnames(m2) <- c("col1","col2","col3")

m2

#naming rows : rbind() , cbind()
m3 <- cbind(m3 , m4)
m3

new_row <- seq(25 , by = 2 , length.out = 3)
m5 <- rbind(m2 , new_row)
m5

#matrix access : []
syntax : matrix[row , col]

m2[2 , 2]
m2[2 , c(1,2)]
m2["row1","col2"]

#update matrix 
matrix[1 , ] <- 13:15
matrix

#replace all odd no by 1
matrix[matrix %% 2 == 1] <- 1
matrix

#replace all even by 2 
matrix[matrix %% 2 == 0 ] <- 2
matrix

#miscellaneous functions
sum(matrix)
rowSums(matrix)
colSums(matrix)
nrow(matrix)
ncol(matrix)
dimnames(matrix)
min(matrix)
max(matrix)
mean(matrix)
median(matrix)

#change dimension of matrix 
dim(matrix) <- c(3 , 3)
matrix

#matrix arithmetic
m3 <- matrix(1:9 , nrow = 3 , ncol = 3 , byrow = TRUE)
m4 <- matrix(1:9 , nrow = 3 , ncol = 3 , byrow = TRUE)

#addition : matrix col & rows must be same
m3 + m4
m3 - m4
m3 / m4
m3 %*% m4
9 %in% m4
m3
#transpose of a matrix 
t(m3) # it returns matirx in which row will become col & col will become rows 

#delete matrix 
matrix[-1 , ]
matrix[1 , ] <- c(NA , NA , NA)
matrix
is.na(matrix)
matrix <- as.numeric(na.omit(matrix))



