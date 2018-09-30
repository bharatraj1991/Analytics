# Data Strucutre in R

# Vectors----
x=1:10 # create sequence of nos from 1 to 10
x # prints the value in console
x1 <- 1:20 # creates a sequence of nos from 1 to 20
x1 # prints the value

(x1=1:30) # creates as well as prints the values simultaneously
(x2=c(1,2,13,4,5)) 
class(x2)



(x3=letters[1:10])
class(x3)
LETTERS[1:26]
(x3b=c('a',"Dhiraj",'4'))
class(x3b)  
?c# Help function use by help
(x4=c(T,FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
x5
class(x5)
x5a=c(3,5)
class(x5a)
(x5b=c(1,'a',T,4L))
class(x5b)

#access elements
(x6=seq(0,100,by=3))
?seq

ls()# access variables in my environment
x6
length(x6)
x6[20]# access 20 th element
x6[3] # access 3rd element
x6[c(2,4)] # access 2nd and 4th element
x6[-1] # access all but first element
x6[-c(1:10)]
x6[-c(1:10,15:20)]
x6[c(2,-4)] # cannot mix positive and negative integers

x6[c(2.4,3.54)]# real numbers are truncated to integers

x6[-c(1,5,20)]
x6[-length(x6)-1]
length(x6)
(x7=c(x6,x2))

#modify
x6
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing = T) # descending order of values
rev(x6) # reverse order of values


seq(-3,10,by=2)
(x=-3:2)# creates a vector from -3 to 2 by 1 difference
x[2]<-0;x # modify 2nd element
x
(x=-3:2)
x<0
x[x<=1 & x>=-1]=100;x
x
x[x<0]=5;x
x[2]<- 10 :x

x=x[1:4];x # truncate x to first 4 elements

#delete vector
(x=seq(1,5,length.out = 10 ))
x= NULL # deletes the values of vector
x
x[4]

(x=rnorm(100)) # crteates 100 values with mean 0 and Sd 1
?rnorm
plot(density(x))
mean(x)
(x1 = rnorm(1000000, mean=50, sd=5))
plot(density(x1))
abline(v=mean(x1),h=0.04)
?abline
# Matrices----
100:111
  (m1=matrix(1:12,nrow = 4))
  (m2=matrix(1:12,ncol = 3,byrow = T))
x= 101:124
length(x)
matrix(x,ncol =6 )
class(m1)
attributes(m1)
dim(m1)
m1
# access elements of Matrix
m1[1,2:3]
m1[c(1,3),]
m1[,-c(1,3)] 
m1
paste("C","D",sep="-")
paste("C",1:100,sep="-")

(colnames(m1)= paste('C',1:3,sep ='' ))
m1
(rownames(m1)= paste('R',1:4,sep ='' ))
m1
attributes(m1)
dim(m1)

#vector to matrix
(m3=1:24)
dim(m3)=c(6,4)
m3

# access elements
m2
m2[1,]
m2[c(1,3,4),]
m2[,1]
m2[,2:3]
m2
m2[c(1,2),c(2,3)]
m2[,]
m2[-2,]
m2[1:5]
m2
m2[c(TRUE,F,T,F),c(F, T, T)] #logical indexing
m2[m2 > 5 & m2 < 10]

m1
m1[1:2,1:2]
m1[c('R1'),c('C1','C3')]
m1[1:2,]
m1[c(T,T,F,F),]
m1

sweep(m1,MARGIN = 1,STATS = c(2,3,4,5),FUN = "+")
sweep(m1,MARGIN = 2,STATS = c(2,3,4),FUN = "*")
?sweep

# Arrays----
(rollno = 1:30)
(sname= paste('student',1:30,sep = ''))
(gender = sample(c('M','F'), size = 30, replace = T, prob = c(0.7,0.3))


# Data Frames----

# Factors----