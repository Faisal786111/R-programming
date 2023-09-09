  #open database connectivity (odbc) :
  
  #step for dsn(data source name):
  #step 1 : go to the control pannel 
  #step 2 : write windows tools on the search bar of control pannel
  #step 3 : select odbc 64bit 
  #step 4 : add another dsn which mysql driver
  #step 5 : add the following information :
  #  5.1 : data source name like MySQL_DSN
  #  5.2 : tcp/ip name like localhost
  #  5.3 : username 
  #  5.4 : password
  #  5.5 : select database which is avaible in your system
  #step 6 : to access data source only just you have to write your DSN(MySQL_DSN) name 
  #        in odbcConnect

  #install required packages 
  install.packages("RODBC")
  install.packages("DBI")
  install.packages("odbc")
  library("DBI")
  library("RODBC")
  library("odbc")
  
  #connection established 
  conn1 <- odbcConnect("MySQL_DSN")
  
  #read all the data from bookdata table
  books <-sqlQuery(conn1,"Select * from bookstore")
  books
  
  #data manipulation operations 
  dept<- c("CO","IT")
  bookdata <- cbind(bookdata,dept)
  bookdata <- rbind(bookdata,list("cpp","8th","788","Lather"))
  bookdata
  
  dataframe <- data.frame(name = c("Faisal","Harsha","Faizan"),dept=c("Co","IT","Lather"))
  
  # Example: Export a data frame to a new table in the database
  #rwoname = FALSE means that i don't want to include attribute of rows
  #sqlSave(conn , bookdata1,tablename = "bookdata2",rownames = FALSE)
  new_table_name <- "bookstore"
  sqlSave(conn1,bookdata ,tablename ="bookdata",append=TRUE,rownames = FALSE)
  
  #close connection 
  odbcClose(conn1)
  
  
  
  #extra operation to perform
  library("odbc")
  library("RODBC")
  conn <- odbcConnect("MySQL_DSN")
  bookdata1 <- sqlQuery(conn,"SELECT * from bookdata1")
  list1 <- list("cpp","7th","700")
  bookdata1
  bookdata1 <- rbind(bookdata1,list1)
  bookdata1
  bookname <- "cpp"
  bookedition <- "7th"
  bookprice <- "700"
  #to insert character we have to enclose them into sinle qoutes ('')
  #INSERTION
  sqlQuery(conn, "INSERT INTO bookdata1 VALUES ('b=700','bookedition' ,'80' )")
  
  #read
  sqlQuery(conn,"Select * from bookdata1")
  
  #another Insertion method using paste function
  sql_query <- paste("INSERT INTO bookdata1 (bookname, bookedition, bookprice) VALUES ('", 
                     bookname, "', '", bookedition, "', ", bookprice, ")", sep = "")
  sqlQuery(conn, sql_query)
  sqlQuery(conn,"select * from bookdata1")  
  sqlQuery(conn,"insert into bookdata1 values('cpp','10','11')")
  
  #delete
  sqlQuery(conn,"delete from bookdata1 where bookedition = 'bookedition'")
  
  
  #update 
  sqlQuery(conn, "UPDATE bookdata1 SET bookname = 'spring' WHERE bookedition = '10'")
  #close connection
  odbcClose(conn)
  
