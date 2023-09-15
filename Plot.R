#creation of plot : using plot()
#syntax :
#plot(x,y,type,main,xlab,ylab,col,cex,pch,lwd,lty)

#parameters :
#x and y are two input vectors
#type : is a code used to specify type of plot
#   p for plot point only
#   l for plot line only
#   b for plot both 
#   c to line only without points
#   o to plot both over-plotted pointes and line
#   h to plot histogram plot
#   s to plot stair steps
#main is used to specify title of graph/plot
#xlab and ylab is used to spcefiy lables of X and Y axis
#col is used to specify color. By defaul black
#cex is used to specify the size of points.By default 1
#pch is used to specify shape of points. ranges from 0 to 25
#lwd is line width is used to specify line width. by default 1
#lty is line style is used to specify line style.ranges from 0 to 6
#   0 removes line
#   1 displays solid line
#   2 dashed line
#   3 dotted line
#   4 "dot dashed" line 
#   5 "long dashed" line
#   6 "two dashed"(long and short dashes) line

#simple plot 
plot(c(1,2),c(2,3),type ="o",main="Faisal plot",xlab ="years",ylab="parameters",cex=2,pch=10,col="cyan",lwd=5,lty=3)

#month and temprature plot
month <- 1:12
month

temp20 <- c(10.1,10.2,10.3,10.4,14.3,15.4,5.3,12.2,8.4,12.1,7.4,5.4)
temp20

temp21 <- c(10.6,10.7,10.4,3.1,12.3,10.1,5.3,15.2,8.4,14.1,7.4,5.4)
temp21

#plot for temp20 and month
plot(month,temp20,type = "b",xlab="months",ylab="temperatures",main="2020 Temperatures",col = "cyan",cex=2,lwd=5,lty=3)


#plot for temp21 and month
plot(month,temp21,type ="b",xlab="months",ylab="temperatures",main="2021 Temperatures",cex=2,col="red",lty=1,lwd=4)

#comparision of two plots using lines() and points() functions (2020,2021,2022) :
month <- 1:12
month

temp20 <- c(10.1,1,10.3,10.4,14.3,15.4,5.3,12.2,8.4,22,10,16)
temp20

temp21 <- c(20.1,20.2,20.3,20.4,20.5,20.6,20.7,20.8,20.9,20.1,20.2,20.3)
length(temp21)

temp22 <- c(1,2.3,7,3,9,11,13,9,7,5,7,1)
length(temp22)

plot(month,temp20,type="b",main="2020 vs 2021 vs 2022 Temperatures",col="green",lwd=5,cex=2,lty=1,xlab="months",ylab="termperature")
lines(month,temp21,type="b",col="red",cex=2,lty=1,lwd=3)
points(month,temp22,type="b",col="blue",cex=2,lty=1,lwd=4)
legend(x="topright",title="years",legend=c("2020","2021","2022"),fill = c("green","red","blue"))

#Save file using commands :

#1. save as jpeg image : use jpeg()

jpeg(file = "D:/study material/5TH SEM NOTES/DAR/RScripts/Images/temp20.jpeg",width=300,height=300,units = "px")
plot(month,temp20,type="b",xlab="months",ylab="temperatures",main="2020 Temprature",cex=2,lwd=3,col="cyan",lty=1)
dev.off()
#dev.off() is used to shut down current device , here it is used to close down current plot

#2. save as png image : use png()

png(file="D:/study material/5TH SEM NOTES/DAR/RScripts/Images/temp20.png",width=500,height=500,units="px",res=100)
plot(month,temp20,type="b",xlab="months",ylab="temeprature",main="2020 vs 2021 Temperature",lwd=3,lty=1,cex=2,col="cyan")
points(month,temp21,type="b",col="red",lwd=3,cex=2,lty=1)
legend(x="topright",title = "years",legend=c("2020","2021"),fill = c("cyan","red"))
dev.off()

#3. save as svg image : use svg()
svg("D:/study material/5TH SEM NOTES/DAR/RScripts/Images/temp20.svg")
plot(month,temp20,type="b",xlab="months",ylab="temperatures",main="2020 vs 2021 Temprature",cex=2,lwd=3,col="cyan",lty=1)
lines(month,temp21,type="b",col="red",lwd=3,cex=2)
legend(x="topright",title="years",legend = c("2020","2021"),fill=c("cyan","red"))
dev.off()

#4. save as bmp image : use bmp()
bmp("D:/study material/5TH SEM NOTES/DAR/RScripts/Images/temp22.bmap")
plot(month,temp22,main="2021 Temperature",xlab="months",ylab="temperature",lwd=3,lty=1,col="cyan",cex=2,type="b")
dev.off()

#5. save as pdf : use pdf()
pdf("D:/study material/5TH SEM NOTES/DAR/RScripts/Images/temp22.pdf")
plot(month,temp22,main="2021 Temperature",xlab="months",ylab="temperature",lwd=3,lty=1,col="cyan",cex=2,type="b")
dev.off()
