#Data Sampling 
#Data sampling refers to the process of selecting a subset of data from a larger dataset.  
#This can be useful for various purposes, such as statistical analysis, model training, or testing.
#to perform data sampling we have one built in function sample( )

#sample function is used to take a random sample of elements from a dataset or a vector ,either with or without replacement.

#syntax : 
sample(x , size , replace )

parameters 
#x = dataset or vector from which the sample is choosen 
#size = size of the sample 
#replace = indicating that the sampling should be done with or without replacement.
#          If replace = TRUE, then the sampling should be done with replacement  ,
#          replace = FALSE , sampling done without replacement

          
data(mtcars)
head(mtcars)


mtcars_sample <- mtcars[sample(nrow(mtcars ) , 3  ) , ]
mtcars_sample
