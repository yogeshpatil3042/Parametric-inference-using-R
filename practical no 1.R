rm(list = ls())

#Practical no .1
##Q.1

tourist <- matrix(c(9.303,9.536,9.918,7.959,7.736,8.875,15.224,15.629,16.090,0.905,0.894,0.883,17.463,18.635,20.148),byrow = T , nrow = 5)
tourist
year  <-  c("2003","2004","2005")
nationality  <- c("Germany","France","Great britan","USA","Rest of the word")
dimnames(tourist)  <-  list(nationality, year)
tourist

row_sum <- apply(tourist,1,sum)
row_sum
column_sum <- apply(tourist,2,sum)
column_sum
row_mean <- apply(tourist,1,mean)
row_mean
column_mean <- apply(tourist,2,sum)
column_mean

##Q.2

A <- matrix(c(3,2,1,2,-3,1,1,1,1),byrow = T,nrow=3)
A
b <- matrix(c(10,-1,6),nrow=3)
b
solve(A,b)         #this term salve the sistem of linear equations

solve(A)           #give inverse of matrix


#Q.3
rm(list = ls())

 #it is 1st method

age <- c(25,30,18)
gender <- c("M","F","F")
weight <- c(166,115,120)
d <- data.frame(age,gender,weight)
d


 #another method

mydata <- data.frame(age=numeric(0),gender=character(0),weight=numeric(0))
mydata <- edit(mydata)
mydata
print(mydata)

 ## 3rd method

mydatatxt <-  "
age gender weight
25 M 166
30 F 115
18 F 120
"
mydata_=read.table(header=T,text=mydatatxt)
mydata_


##Q.4

leadership <- data.frame(manager=numeric(0),date=numeric(0),country=character(0),gender=character(0),age=numeric(0),q1=numeric(0),q2=numeric(0),q3=numeric(0),q4=numeric(0),q5=numeric(0))
leadership_ <- edit(leadership)
print(leadership)


#Q.5

library(MASS)
data(Cars93)
fix(Cars93)
?Cars93
head(Cars93)
tail(Cars93)
attach(Cars93)
# a
table(Origin,AirBags)
# b
ftable(Origin,AirBags,DriveTrain)
   ##### table and ftable command is use for making categorical data

ftable(Origin)
ftable(AirBags)
ftable(DriveTrain)

# c
OA <- table(Origin,AirBags)
OA
margin.table(OA)
margin.table(OA,1)
margin.table(OA,2)

prop.table(OA)
prop.table(OA,1)
prop.table(OA,2)



#Q.6

library(ISLR2)
data(College)
fix(College)
?College
head(College)
?College
attach(College)
summary(College)
dim(College)
pairs(College[,1:10])
boxplot(Outstate~Private,data=College)
?ifelse
attach(Top10perc)

Elite_class=ifelse(Top10perc>50,"Elite","Not Elite")
Elite_class[1:10]

