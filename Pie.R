#Pie chart :
#1.It is a circular graph that indicates numerical proportion in slices
#2.It is used to show contribution of slices in entire graph 
#3.It is generic function that accepts different types of input objects to create pie chart
#Syntax :
#pie(x,main,lables,clockwise,radius,col)
#parameters :
# x is an input vector
# main parameter is used to specify title of pie chart
# labels used to specify description of slices
# col is used to specify color of slices
# radius of a circle
# clockwise indicates whether slices are drawn clockwise or anti-clockwise

#example :
areas <-c(10,20,30)
per <- paste(c("water","lawa","earth"),"-",round(areas/sum(areas)*100),"%")
per
pie(areas,labels=per,radius=0.5,main="Faisal Pie Chart",clockwise = TRUE,col=rainbow(length(areas)))
legend(x="topright",cex=1.1,title="Areas",legend=c("water","lawa","earth"),fill=rainbow(length(areas)))
#cex is used to specify size of legend

#another example :
books <- c("Urdu","Marathi","Maths","Science","Algebra","Cpp","C")       
readers<-c(10,20,30,40,50,60,70)
sum(readers)

per <- paste(round(readers/sum(readers)*100),"%")
per

pie(readers,radius=0.5,main="Book Survey",labels = per,col = rainbow(length(readers)),cex=1,clockwise=FALSE)
legend(x="bottomright",title="Book type",legend = books,cex=1,fill=rainbow(length(readers)))

#Pie chart : generic function : Accepts different type of input object to create pie chart
classA #list
classB #dataframe
perc <- paste(round(classA$marks/sum(classA$marks)*100),"%")
perc
pie(classA$marks,labels = perc,col = rainbow(length(classA$marks)),cex=1.1,radius=0.6,main="Marks Survey",clockwise=FALSE)
legend(x = "bottomright",title="Names",legend=classA$name,fill=rainbow(length(classA$marks)),cex=0.5)

#By defaul R display pie chart in 2d format 
#To create 3D pie chart use the following commands
#3D pie chart : install potrix package
install.packages("plotrix")
library("plotrix") #install library

#to create 3d pie chart : use pie3D()
#syntax :
pie3D(x , labels,col,main,explode)
#parameters
#x is an input vector
#labels are used to give description of slices
#col is used to give color to the slices
#main is used to give the title of pie chart
#explode parameter controls the degree of separation of individual slices from the center of the pie chart

#example : (marks survey)
pie3D(classA$marks,radius=0.9,labels = perc,labelcex = 1,main="Marks Survey",explode = 0.1,col = rainbow(length(classA$marks))) 
legend(x="topright",title="Names",legend=classA$name,fill=rainbow(length(classA$marks)),cex=0.5)
      