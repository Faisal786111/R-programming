#Barchart : 

#it is a graph with rectangular bars 
#it represents categorical data
#The height of the bars are proportional to the values they represent
#to create barchart use barplot() function

#syntax :
#barplot(x,xlab,ylab,names.arg,main,col,width = optional)

#parameters :
#x : it can be vector or matrix
#xlab & ylab : used to give labels to x and y axes resp
#names.arg : is a vector which is used to give caption to each bar
#col : is used to give color to the bars
#width : used to give width the the bars
#main : used to give title to the bar chart

#example 
events <- data.frame(ename = c("coding","paper","project","tech"), scount = c(12,20,40,100))
events



barplot(events$scount,main = "Event Analysis", xlab = "Event Names" , ylab = "Student Counts" , names.arg = events$ename,col = rainbow(length(events$scount)), width = c(0.2,0.4,0.6,0.8))
barplot(events$scount,main = "Event Analysis", xlab = "Event Names" , ylab = "Student Counts" , names.arg = events$ename,col = heat.colors(length(events$scount)), width = c(0.2,0.4,0.6,0.8))
barplot(events$scount,main = "Event Analysis", xlab = "Event Names" , ylab = "Student Counts" , names.arg = events$ename,col = terrain.colors(length(events$scount)), width = c(0.2,0.4,0.6,0.8))
img <- barplot(events$scount,main = "Event Analysis", xlab = "Event Names" , ylab = "Student Counts" , names.arg = events$ename,col = topo.colors(length(events$scount)), width = c(0.2,0.4,0.6,0.8))
img

#text(x , y , texts, cex = size , pos)
text(img,0,events$scount,cex = 1,pos = 3)

box()

#legend :
legend(x ="topleft", title = "Event Analysis", legend = events$ename,fill = topo.colors(4) )

#to represent Barchart horizontally :
barplot(events$scount,main = "Event Analysis", xlab = "Event Names" , ylab = "Student Counts" , names.arg = events$ename,col = topo.colors(length(events$scount)), width = c(0.2,0.4,0.6,0.8),horiz = TRUE)


#Another example :
event1 <- data.frame(ename = c("coding","paper","project","quiz") , boys = c(10,20,30,40), girls = c(20,30,10,30))
event1

#In this example we have to create matrix bcoz barplot accepts matrix and vector
#here we have to columns boys and girls that's why we have to create matrix

emat <- matrix(c(event1$boys,event1$girls),nrow = 2,ncol = 4, byrow = TRUE)
colnames(emat) <- c("coding","paper","project","quiz")
rownames(emat) <- c("boys", "girls")
emat

#create grouped barchart : beside = TRUE
img1 <-barplot(emat, xlab = "Event Names", ylab= "Student counts", main="Event Analysis",beside = TRUE , col = c("cyan","green"))
img1

#represent count on the grouped barchart
text(img1,0,emat , pos =3 , cex = 1)

#legend :
legend(x = "topleft",title ="Event Analysis",legend = event1$ename , fill = c("cyan","green"))


#To create Stacked barchart : beside = FALSE
barplot(emat ,main="Event Analysis", xlab = "Event names" , ylab = "Student Counts", col = c("cyan","green"))
legend(x = "topleft", legend = c("boys", "girls"),fill = c("cyan","green"))
box()


#Month wise book sale :
bookdata <- data.frame(bid = c(1,2,3,4,5,1,2,3,4,5) , bname = c("c","c++","Java","Spring","Maths","c","c++","Java","Spring","Maths"), copies=c(10,20,30,40,50,50,30,20,40,10) , months = c("jan","jan","jan","jan","jan","feb","feb","feb","feb","feb"))
bookdata

#create a matrix for bar chart
bmat <- matrix(bookdata$copies,nrow = 5,ncol = 2 , byrow = TRUE)
bmat
colnames(bmat) <- c("Jan","Feb")
rownames(bmat) <- c("c","c++","Java","Spring","Maths")


#Create barchart for bookdata

#Grouped barchart :
img4 <-barplot(bmat,main = "Month Wise Book Sale" , xlab = "Books", ylab = "Book copies" , beside  = TRUE , col = rainbow(5)  )
text(img4 , 0 , bmat , pos = 3)
box()

#Stacked barchart :
barplot(bmat, main = "Month wise book sale" , xlab = "Books" , ylab = "Book copies" , col = rainbow(5) , names.arg = c("jan","feb") )
box()

