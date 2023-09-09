#Functions in r :
#1. user defined functions
#2. built-in functions

#syntax : 

#function_name <-function(){
  #statements to execute
#}

#calling syntax :
#function_name()

#function without argument :
add <- function(){
  a=10
  b=20
  print(paste(a+b))
}

add()

#function with arguments
add <- function(a,b){
  print(a+b)
}
add(10,20)
add(a=10,b=30)
add(b=30,a=20)

#function with default arguments 
add <- function(a=100,b=20){
  print(a+b)
}
add()
add(10,20)
add(b=10)
add(a=20)
add(10)
add(,20)

#function with user value

add<- function(){
  a<- as.integer(readline("Enter first no : "))
  b<- as.integer(readline("Enter second no : "))
  print(a+b)
}
add()

#function with control structure (even or odd)
add <- function(){
  a<- as.integer(readline("Enter first no : "))
  
  if(a %% 2 == 0){
    print(paste(a,"is even"))
    #paste() : combine variable and msg
  }else{
    print(paste(a,"is odd"))
  }
}
add()

#function for multiplication table 
mulTable <- function(){
  a <- as.integer(readline("Enter a no :"))
  i <- 1
  while(i<=10){
    print(paste(a,"*",i,"=",a*i))
    i<- i+1
  }
}
mulTable()

#function for factorial no 
factorial <- function(){
  a <- as.integer(readline("Enter a no :"))
  fact <- 1
  i <-1
  while(i <=a){
    fact = fact * i
    i<- i+1
  }
  print(paste("factorial :",fact))
}

factorial()

#function for prime no 
primeNo <- function(){
  a<- as.integer(readline("Enter a no :"))
  i <-1
  count <- 0 
  while(i <=a){
    if(a %% i == 0){
      count = count +1
    }
    i<- i+1
  }
  if(count == 2){
    print(paste(a,"is prime no!!"))
  }else{
    print(paste(a,"is not prime no"))
  }
}

primeNo()

#function for calculator
calculator <- function(){
  a <- as.integer(readline("Enter a no :"))
  b<- as.integer(readline("Enter second no :"))
  choice <- readline("Enter your choice:\n1. Addition\n2. Subtraction\n3. Multiplication\n4. Division")
  
  
  result <- switch(choice,
                  "1" = a + b,
                  "2" = a - b,
                  "3" = a * b,
                  "4"= if (b != 0) a / b else "Division by zero is not allowed"
  )
  
  cat("Result:", result, "\n")
}

calculator()


#function for ODBC
library("odbc")

conn <- odbcConnect("MySQL_DSN")

bookdata1 <- sqlQuery(conn,"Select * from bookdata")
bookdata1

dbInsert = function(){
  rows <- as.integer(readline("Enter the no of row :"))
  for(i in 1:rows){
    bookname <- readline("Enter the book name :")
    bookedition <- readline("Enter the book edition :")
    bookprice <- readline("Enter the book price :")
    list <- list(bookname,bookedition,bookprice)
    bookdata1 <- rbind(bookdata1,list)
    sql_query <- paste("INSERT INTO bookdata1 VALUES('",bookname,"','",bookedition,"','",bookprice,"')",sep="")
    sqlQuery(conn,sql_query)
 
  }
    sqlQuery(conn,"Select * from bookdata1")
  print(bookdata1)
  #rwoname = FALSE means that i don't want to include attribute of rows
  #sqlSave(conn , bookdata1,tablename = "bookdata2",rownames = FALSE)
}
dbInsert()
print(bookdata1)



# Create a lazy evaluation function
lazy_add <- function(a, b) {
  function() {
    cat("Adding two numbers...\n")
    a + b
  }
}

# Create promises for adding 2 and 3
result1 <- lazy_add(2, 3)
result2 <- lazy_add(5, 7)
result1()

# Force the evaluation of promises
cat("Result 1:", result1(), "\n")
cat("Result 2:", result2(), "\n")
















