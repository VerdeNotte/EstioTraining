#Creating a list in R - first way

scc1 <- list (4,78, "Gio",8.99)
#Creating a list using the list function.
scc1
#Checking what is in the list
typeof(scc1)
#What datatype is in the list
length(scc1)
#Number of things in the list

#Creating a list in R - second way

scc2 <- list ("a" = 2.5, "b" = T, "c" = 1:3)
#Creating a list with a having the value of 2.5.
#b having the value True and c have the numbers 1,2,3
scc2
#Displaying the values of the scc2 list

typeof(scc2)
#Type of datatype (it's a list)

length (scc2)
#3 boxes in the list

typeof (scc2[3])

#Here, we create a list x, of three components with data types double,
#logical  and  integer vector respectively.Its structure can be examined with the str() function
#You haven't fully unpacked the box.

typeof (scc2[[3]])
#This gives us the actual datatype.

str(scc2)
#The above lists structure can be looked at with the str() function
#$a, $b, $c are called tags which makes it easier to reference the components of the list.
#It shows the datatype and the values
#It's possible to create the same list without the tags.

#How to access components of a list?

l1<-list("name"="John", "age"=18, "speaks"=c("eng", "french"))
l1[1]
#Looks at the first thing of the list
l1[2]
#Looks at the second thing in the list
l1[3]
#Looks at the third thing in the list
l1[[3]][[2]]
#Looks into the third box, second thing in the list

l1[c(1:2)]
#Indexing using the integer vector. Comes up with the first two things

l1[-2] 
#Using the negative integer excludes the second component

l1[-1]
#Using the negative integer excludes the first component

l1[c(TRUE, FALSE, FALSE)]
#Index using logical vector
#So bringing up the first True logical but not the false

l1[c(T,F,T)]
#Brings up the first and third true logical but not the false

l1[c("age", "speaks")]
#Index using character vector

#Indexing with [] only gives us the sublist not what is inside the box
#To retrieve the content within the box we need to use [[]]


l1 ["age"]
#Returns a list
typeof(l1["age"])

l1[["age"]]
#Returns the content of the list

#An alternative to [[, which is used often while accessing content of a list is the $ operator. 
#They are both the same, except that $ can do partial matching on tags.

#[ notation vs [[ notation

l1$name
#same as 
l1[["name"]]
l1[[3]][[2]] 
#Accessing the second element in the 3rd element

l1$speaks[[2]]

l1$age
l1$a
l1$ag
#All the above is the same, partial matching 

l1[["a"]]
#The above function can notdo a partial match with [[

# indexing can be done recursively
l1$speaks[1]
l1[["speaks"]][2]
l1$speaks[3]
#Can't index something that isn't there

#How to modify a list in R
#We can change components of a list through reassignment

l1[["name"]] <- "Sue";
l1
#Change the name from John to Sue
l1[2] <- 28

#Adding components to a list
l1[["married"]] <- TRUE
#Added the above to the list
l1 [4] <- 5
#Adding to the fourth element of the list, how many times I've been married

l1
#Checking what's on the list

l1[8] <- "Goodbye"
#Added an eight component within it Goodbye, this has made 5-7 null
l1

#Delete components from a list
#We can delete a componment by assigning NULL to it.

l1[["age"]] <- NULL
#Made age NULL
str(l1)
#Checked the structure

l1[["married"]] <- NULL
str(l1)
#Deleted "married" so it's become NULL.
l1[3] <- NULL
l1[[3]] <- NULL
l1
