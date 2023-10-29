# Define the data
mtcars <- data.frame(
  model = c("Mazda RX4", "Mazda RX4 Wag", "Datsun 710", "Hornet 4 Drive", "Hornet Sportabout",
            "Valiant", "Duster 360", "Merc 240D", "Merc 230", "Merc 280", "Merc 280C",
            "Merc 450SE", "Merc 450SL", "Merc 450SLC", "Cadillac Fleetwood",
            "Lincoln Continental", "Chrysler Imperial", "Fiat 128", "Honda Civic",
            "Toyota Corolla", "Toyota Corona", "Dodge Challenger", "AMC Javelin",
            "Camaro Z28", "Pontiac Firebird", "Fiat X1-9", "Porsche 914-2", "Lotus Europa",
            "Ford Pantera L", "Ferrari Dino", "Maserati Bora", "Volvo 142E"),
  mpg = c(21.0, 21.0, 22.8, 21.4, 18.7, 18.1, 14.3, 24.4, 22.8, 19.2, 17.8, 16.4, 17.3, 15.2,
          10.4, 10.4, 14.7, 32.4, 30.4, 33.9, 21.5, 15.5, 15.2, 13.3, 19.2, 27.3, 26.0, 30.4,
          15.8, 19.7, 15.0, 21.4),
  cyl = c(6, 6, 4, 6, 8, 6, 8, 4, 4, 6, 6, 8, 8, 8, 8, 8, 8, 4, 4, 4, 4, 8, 8, 8, 8, 4, 4, 4, 8, 6, 8, 4),
  disp = c(160.0, 160.0, 108.0, 258.0, 360.0, 225.0, 360.0, 146.7, 140.8, 167.6, 167.6, 275.8, 275.8, 275.8,
           472.0, 460.0, 440.0, 78.7, 75.7, 71.1, 120.1, 318.0, 304.0, 350.0, 400.0, 79.0, 120.3,
           95.1, 351.0, 145.0, 301.0, 121.0),
  hp = c(110, 110, 93, 110, 175, 105, 245, 62, 95, 123, 123, 180, 180, 180, 205, 215, 230, 66, 52, 65,
         97, 150, 150, 245, 175, 66, 91, 113, 264, 175, 335, 109),
  drat = c(3.90, 3.90, 3.85, 3.08, 3.15, 2.76, 3.21, 3.69, 3.92, 3.92, 3.92, 3.07, 3.07, 3.07, 2.93, 3.00,
           3.23, 4.08, 4.93, 4.22, 3.70, 2.76, 3.15, 3.73, 3.08, 4.08, 4.43, 3.77, 4.22, 3.62, 3.54, 4.11),
  wt = c(2.620, 2.875, 2.320, 3.215, 3.440, 3.460, 3.570, 3.190, 3.150, 3.440, 3.440, 4.070, 3.730, 3.780,
         5.250, 5.424, 5.345, 2.200, 1.615, 1.835, 2.465, 3.520, 3.435, 3.840, 3.845, 1.935, 2.140, 1.513,
         3.170, 2.770, 3.570, 2.780),
  qsec = c(16.46, 17.02, 18.61, 19.44, 17.02, 20.22, 15.84, 20.00, 22.90, 18.30, 18.90, 17.40, 17.60,
           18.00, 17.98, 17.82, 17.42, 19.47, 18.52, 19.90, 20.01, 16.87, 17.30, 15.41, 17.05, 18.90, 16.70,
           16.90, 14.50, 15.50, 14.60, 18.60),
  vs = c(0, 0, 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1),
  am = c(1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1),
  gear = c(4, 4, 4, 3, 3, 3, 3, 4, 4, 4, 4, 3, 3, 3, 3, 3, 3, 4, 4, 4, 3, 3, 3, 3, 3, 4, 5, 5, 5, 5, 5, 4),
  carb = c(4, 4, 1, 1, 2, 1, 4, 2, 2, 4, 4, 3, 3, 3, 4, 4, 4, 1, 2, 1, 1, 2, 2, 3, 2, 1, 2, 2, 2, 4, 6, 2)
)

# Print the DataFrame
print(mtcars)
names(mtcars)

#boxplot : to create boxplot use boxplot()

#syntax : 
boxplot(x , data , xlab , ylab , main , varwidth , notch)

x = vector or formula 
data  = data source 
xlab & ylab are lables
main title
varwidth = FALSE 
notch  = FALSE
max(mtcars$mpg)
min(mtcars$mpg)
median(mtcars$mpg)


boxplot(mtcars$mpg , xlab = "no of mpg", ylab = "mpg", varwidth = FALSE , notch = TRUE , horizontal =  TRUE , col = "orange")


boxplot() can take formula 

boxplot(mtcars$mpg ~ mtcars$am  , xlab = "no of am", ylab = "mpg" ,varwidth = TRUE )


#histogram :

#syntax :
hist(v,main,xlab,xlim,ylim,breaks,col,border)

v is a vector containing numeric values used in histogram.

main indicates title of the chart.

col is used to set color of the bars.

border is used to set border color of each bar.

xlab is used to give description of x-axis.

xlim is used to specify the range of values on the x-axis.

ylim is used to specify the range of values on the y-axis.

breaks is used to mention the width of each bar.


data <- c(1,1,2, 3, 4,5,  10 , 20 ,30)
hist(data , xlim = c(1,30) , ylim = c(1,30) , col =c("orange"),breaks = 5, border = "red", xlab = "data" , ylab = "ranges")
legend(topright , legend = c(data))

