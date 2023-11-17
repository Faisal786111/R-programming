#Experiment 5 :

#generate mulTable for the user entered no 

no <- as.numeric(readline("Enter a no : "))

for(i in 1:10){
  cat(no , "*" , i , "=", no*i,"\n")
}


#create a simple calculator using switch control structure 
calculator = function(){
  a <- as.numeric(readline("Enter first no :"))
  b <- as.numeric(readline("Enter second no :"))
  
  choice <- as.numeric(readline("Enter your choice : 
                    \n 1.add \n 2.sub \n 3.mul \n 4.div
                  "))
  
  switch(choice , 
         "add" = print(a+b),
         "sub" = if(a >b) {
           print("",a-b)
         }else{
           print(b-a)
         },
         "mul" = print(a*b),
         "div" = if(b>0) {
           print(a/b)
         }else{
           print("Cannot divide by zero")
         }
  )
}
calculator()
