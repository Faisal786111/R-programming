#Regression :
#1. Linear Regression 
#2. Multiple Regression

#1. Linear Regression :
#Only one predicator variable is used in linear regressin
#Formula for Linear Regression :
# Y = B1 + B2X+E

#lm command is used to calculate Linear Regression


demo <- data.frame(age = 1:10 , height = c(10.2,10.4,10.7,11.7,111.1,101,102,100.17,170,15.1))
demo

predictHeight = lm( height ~ age , data = demo)
predictHeight

x <- data.frame(age = c(11,12,13))
x

print(predict(predictHeight,x))
#output:
#1       2       3 
#126.552 137.882 149.212 

#Multiple Regression :
#Here more than one predicator variables are available

dataframe <- data.frame(x = c(10,20,30,40),y = c(10,20,30,40),sum = c(20,40,60,80))
dataframe

sum <- lm(sum ~ x+y,data = dataframe)
sum

z <- data.frame(x = c(50,60,70),y=c(50,60,70))ddd
print(predict(sum,z))
#output :
#1   2   3 
#100 120 140 