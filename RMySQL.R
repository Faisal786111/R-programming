#first install required package for connection

#RMySQL package : it is database interface and driver for R
install.packages("RMySQL")
library("RMySQL")

#syntax :
#dbConnect(MySQL(),user ="name",password="password",host ="portno/localhost",dbname="dbname")

#make a connection object for established database connection
conn<- dbConnect(MySQL(),user="root",password="root",dbname="book",host="localhost")

#parameters :
#MySQL() : it is a driver instance(object) for mysql
#user,password and host are the values that are set while the installation of MySQL
#dbname is the name of the database to be connected with

#Basic commands to work with the MySQL environment

#1. get connection summary
summary(conn)

#o/p:
#<MySQLConnection:0,0>
#User:   root 
#Host:   localhost 
#Dbname: book 
#Connection type: localhost via TCP/IP 

#2. get database information
dbGetInfo(conn)

#o/p:
#$host
#[1] "localhost"

#$user
#[1] "root"

#$dbname
#[1] "book"

#$conType
#[1] "localhost via TCP/IP"

#$serverVersion
#[1] "5.7.38-log"

#$protocolVersion
#[1] 10

#$threadId
#[1] 40

#$rsId
#list()

#3.List tables of database
dbListTables(conn)
#op: 
#[1] "bookdata"    "bookdata1"   "bookdata2"   "booklibrary" "bookstore"   "dataframe"

#4.show fields in any table 
dbListFields(conn,"bookdata")
#op:
#[1] "bookname"    "bookedition" "bookprice"  

#5. Remove any table from database
dbRemoveTable(conn,"booklibrary")
#oupute :
#[1]TRUE either FALSE

#6.Read entire table from database
dbReadTable(conn,"bookdata")
#output:
#bookname bookedition bookprice
#1        c         7th       700
#2        c         7th       700

#7. Extract rows from table : 
#dbSendQuery() submits and executes SQL query to database engine
#i: it doesn't extract any record. dbFetch or fetch() functions are used to fetch record
#ii:dbGetQuery() is also used for interactive session and also fetch the record

#Read operation
book <- dbSendQuery(conn,"SELECT * FROM bookdata;")
#book. This book is not the actual data from the database; instead, 
#it's an object that represents the query and the result set on the database server.

#to extract record use fetch(), dbFetch()
bookfetch <- dbFetch(book)
bookfetch

#return only first row
demo <- dbFetch(book,n=1)
demo

#it returns all rows present in table
demo2 <- fetch(book,n=-1)
demo2

#dbFetch(result): This line fetches the data from the result set represented by the result object. 
#It retrieves the actual query results from the database and stores them in the variable data

#output:
#bookname bookedition bookprice
#1        c         7th       700
#2        c         7th       700

#dbGetQuery :(dbSendQuery,fetch)
bookGet <-dbGetQuery(conn,"SELECT * from bookdata;")
bookGet

#8.Execute various queries on database
#insert operation
dbListFields(conn,"bookdata")
#1 row will be inserted into the bookdata table
dbSendQuery(conn,"INSERT INTO bookdata values('spring','8th','800')")

#update operation
dbSendQuery(conn,"UPDATE bookdata set bookedition ='8th' where bookname = 'cpp'")
dbReadTable(conn,"bookdata")

#delete operation
dbSendQuery(conn,"DELETE FROM bookdata where bookname = 'cpp'")
dbReadTable(conn,"bookdata")

#return no of row present in a table
dbGetRowCount(book)

#9.get count of no of rows affect3ed by query
dbGetRowsAffected(book)

#10.clear data/free resources 
dbClearResult(book)

#11.Overwrite table in the databse:
dataframe <- data.frame(rno = 1:3,name=c("faisal","harsha","sujal"),dept=c("co","it","civil"))

#syntax :
#dbWriteTable(conn,"table_name",data,overwrite=TRUE)

#returns TRUE FALSE
dbWriteTable(conn,"bookdata",dataframe,overwrite=TRUE,row.names=FALSE)
dbReadTable(conn,"bookdata")

#12.Append data to the table in the database
dataframe1 <-data.frame(rno = 4:6 , name=c("rudra","aditya","abbas"),dept=c("co","it","lather"))
dbWriteTable(conn,"bookdata",dataframe1,append=TRUE,row_name=FALSE)

#13.Disconnect from database
dbDisconnect(conn)
