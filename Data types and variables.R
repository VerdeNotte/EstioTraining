a <-1
b <-as.integer(4)
c <- "Data Analysis"
d <- T

class(a)
class(b)
class(c)
class(d)
typeof(a)
typeof(b)

Vec <- c(3,2,5,4,7,2)
Vec <-c(3,2,5,4,"7",2)
#everthing into a character, It can't mix datatypes. Converting numbers to characters is always safe, all numbers can be turned into characters. But not all characters can be turned into numbers.

Vec <- c (3,2,5,4,7,2)
# Vector is the name of the variable, c is needed so that the thigns in () are stored in that Vector.

#This is called indexing. If you have a vector, it's important to handle the data (pick up bits). Square brackets indicate indexing into a vector.
#Trying to find the something to something element or range.
Vec[4]
#Shows the 4th number
Vec[2:4]
# Pulling the 2nd to 4th numbers in the variables.
Vec[1]
#Shows the 1st number

Vec[2:4] <- 10
#Changed the 2nd-4th numbers in the range to 10

Vec[-(2:4)]
#We want all the values except 2 to 4

Vec[length(Vec)]
length(Vec)
#Length of the Vec is 6 numbers
Vec[length(Vec)]
#Last number of the Vec

#Relational Operator

Vec[Vec>3]
#Numbers in the Variable greater than 3

Vec[Vec>3 & Vec<7]
#Numbers in the Variable greater than 3 and less than 7

Vec1 <- Vec*2
#Creating a new Variable which is Vec times 2
Vec2 <- Vec + Vec1
#Creating a new variable which is the numbers in Vec + Vec2
Vec2 > 9
# Logical operator - which numbers are greater than nice. Returns boolean.

Vec2[Vec2<10|Vec2>15]
#Vec2 numbers less than 10, Vec2 numbers greater than 15
#|(it's called pipe) is the logical or. Just needs one to be correct.Finding the range of numbers except 
Vec2[Vec2<5|Vec2>15]

Arr <- array(0,dim=c(3,4,2))
#Array of zeros, with 3 rows, 4 columns and 2 tables
Arr
Arr[10] <- 25
#For the 10th number, put 25 in
Arr[2,4,1] <- 100
#Put 100 in the 2nd row, 4th column of the 1st table
Arr[1:3,1,1] <- 100
#Put in row 1:3, 1st column, table 1 the number 100
Arr[3,4,] <- 100
#Put in both tables row 3, column 4 the number 100

#Matrix similar to arrays. Matrix algebra
r <- 4; 
c <- 3; 
rmat <- matrix(rnorm(r*c,mean=0,sd=1),r,c)
#R has the number 4, c has the number 3
#rmat is r*4 with a mean of 0 and standard deviation of 1
rmat>0
rmat
#What numbers in rmat are greater than 0 returned as a boolean value
rmat[rmat>0]
# The numbers greater than 0 in rmat. Not sure about the two lists maybe, 1st 4 numbers then 5th and 6th?
rmat[rmat>-0.5 & rmat<0.5]
#Numbers greater than -0.5 and less than 0.5  
dim(rmat) <- c(r*c,1)
#A new dimension of array with rmat 
round(rmat,digit=4)
#Rounding rmat to 4 places

round(2.71828,digits=0)
#Rounds the number to the nearest whole number
as.integer(2.71828)
#Cuts of the point after 2

irmat <- as.integer(rmat)
irmat
#creating a new variable called irmat with rmat changed into integers

f <- 5; g <- 10; suemat <- matrix(rnorm(f*g, mean=10, sd=1),f,g)
suemat

a <- dia[8:10,]
#Creates a dataframe which has been index. Looking at rows 8 to 10 (,) is important

b <- dia[,8:10]
#I don't care about rows (all of them), only column 8 to 10

select(dia,x:z)
#This is good if you don't want to count the index of the fields