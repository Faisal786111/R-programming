#Excel file (xls,xlsx)

#1. XLConnect package : (JDK require,java environment)

install.packages("XLConnect")
library("XLConnect")

#syntax :
#readWorksheetFromFile("Filename",sheet = no , startRow=no,endRow = no , endCol = no)
#writeWorksheetToFile(data,file="file-name",sheet = "sheetno")

#access book1 excel file using XLConnect package
#ExcelFile <- readWorksheetFromFile("book1.xlsx",sheet =1 , startRow = 1,endRow = 3,endCol = 3 )
ExcelFile <- readWorksheetFromFile("book1.xlsx",sheet = 1)

#2 rows will fetch from excel file
rows <- list(5,"Spring",999,"11th")
ExcelFile<- rbind(ExcelFile,rows)

#print data frame
ExcelFile 


#writeWorksheetToFile means Export data to Excel file
writeWorksheetToFile(ExcelFile,file="D:/study material/5TH SEM NOTES/DAR/RScripts/book1.xlsx",sheet = "Sheet3")

#Alernatively entire workbook can be read and then we can select a sheet to be read
#by using Following command:

#load Excel file to extract particular sheet using loadWorkbook()
ExcelFile <- loadWorkbook("book1.xlsx")
ExcelFile

#retrieve particular sheet from Excel using sheet parameter
ExcelFile1 <- readWorksheet(ExcelFile,sheet = 2)
ExcelFile1 <- rbind(ExcelFile1,list(6,"Abbas",85,"virar"))
ExcelFile1

#Export data to the book1.xlsx
writeWorksheetToFile(ExcelFile1,file="Book1.xlsx",sheet="5")

#2.xlsx package(required java environment) : to connect to excel file

install.packages("xlsx")
library("xlsx")

#to methods : read.xlsx(),write.xlsx()
#syntax :
#read.xlsx("file-name",sheetIndex = no,rowIndex = no,colIndex = no)
#write.xlsx(data,file="file-name",sheetIndex="sheetno",append=TRUE)
#append = TRUE :used to append data frame to existing file

#read Book1.xlsx file
readXls <- read.xlsx("Book1.xlsx",sheetIndex = 3)
readXls$Book.dept <- c("CO","Lather","IT","Civil","Mechanical")
readXls
str(readXls)

#write dataframe to file
write.xlsx(readXls,file="Book1.xlsx")

#3.readxl , writexl package : (not require java environment)
install.packages("readxl")
install.packages(("writexl"))
library("readxl")
library("writexl")

#two methods : read_excel(),write_excel()
#syntax :
#read_excel("file-name",sheet = sheetno)
#write_excel(data,file="file-name")

#read data from excelfile
read_excel <- read_excel("Book1.xlsx")
read_excel #return tables with dimension and datatype of columns

#In R, a tibble is a modern and enhanced version of a data frame,
#designed to make data manipulation and analysis easier and more consistent.

#o/p :
# A tibble: 5 × 5
#Bookd.id Book.name Book.price Book.edition Book.dept 
#     <dbl> <chr>          <dbl> <chr>        <chr>     
#1        1 let us c         700 7th          CO        
#2        2 CPP              900 8th          Lather    
#3        3 JAVA             800 9th          IT        
#4        4 PYTHON           500 10th         Civil     
#5        5 Spring           999 11th         Mechanical

# Assuming you've read your Excel data into a data frame called read_excel
# You can add a new column like this:
read_excel$Book.marks <- c(77, 76, 67, 56, 43)

# Alternatively, if you want to create a new data frame with the added column:
new_data <- read_excel  # Make a copy of the original data frame
new_data$Book.marks <- c(77, 76, 67, 56, 43)

#write data to excel file
write_excel(new_data,"Book1.xlsx")
