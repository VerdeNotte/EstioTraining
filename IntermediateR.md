## Relational Operators

These compare how one R object is related to another.

| Operator     | Code           | Notes  |
| ------------- |:-------------:| -----:|
| Equality      | `==`     | `==` (comparison, `=`(assignment), R is case sensitive|
| Inequality    | `!=`      |  
| Less Than     | `<`       |When comparing character strings, R will do it alphabetically|
| Greater Than  | `>`       |  `TRUE > FALSE` is TRUE because TRUE coerces 1 and FALSE coerces 0|
| Less Than =   | `<=`      |   
| Greater Than  | `>=`      |    

Relational Operator & Vectors

`games <- c(5,6,19,22,7)`
`games > 5 `

Returns

`>[1] FALSE  TRUE  TRUE  TRUE  TRUE`

`rapidgames <- c(0,0,19,22,0)`

> [1] FALSE FALSE  TRUE  TRUE FALSE`

## Logical Operators

| | |
|----|----|
|And | `&`| Takes both logical values and returns only if both are `TRUE`|
|Or  | `|`| Only one of the logical values need to be `TRUE` to return `TRUE`
|Not | `!`|

Like relational operators, logical operators work perfectly fine with vectors and matrices.

## & vs &&, | & ||

`&&` Only examines the first element of each vector

`||` Only examines the first element of each vector.

## Conditional Statements

## if Statements

`if(condition {
  expr})`

If the condition is `TRUE` then the R code will be executed.

`c <- "France"`

`if (c == "France") print (
"Europe")``

> "Europe"

So if I wrote

`if (c == "Germany") print ("Europe")` because this is FALSE, there will be no printout.

# Else Statement
You can only use an `else` statement in combination with an `if` statement. The `else` statement doesn't require a condition. It's corresponding code simply runs if all of the preceding condition in the code are `FALSE`

`if (condition) {
  expr1
} else {
  expr2
}`

It's important to note that the `else` keyword comes on the same line as the closing bracket of the `if` part.

The `else if` statement allows you to add more conditions to your statement. R will ignore the remainder of the control structure once a condition has been found to be `TRUE`

## While Loop
Continues to execute the code until a break. 

>while (condition) {
	>expr
	}

```Initialize i as 1 
i <- 1
while (i <= 10) {
  print(3 * i)
  if ((3 * i) %% 8 == 0 ) {break
    
  }
  i <- i + 1
} 
```
While i is less than or equal to 10 print 3 x i, if 3 * i / 8 is 0 then stop the loop.

* check print 
* check paste
* or other functions that can sit within the while loop

#### Break Statement
Breaks the loop

```num <- 
while (num <= 10 ) {
if (num %% 5 == 0) {
break
}
print (paste ("text to print",  num))
num <- num + 1
```
While num  is less than or greater to 10 then print "text to print + 1 break when num is divided by 5 and = 0.

#### Next Statement

Skips to next to iteration. You can use both next and break in the for loop.



#### for loop 

Somewhat different: for each variable in a sequence, execute this expression. It works with vectors and lists - the results will be the same. Also can be used for matrices. 

v2 - explicit looping index, more thought but gives you the information you need

```
primes <- c(2, 3, 5, 7, 11, 13)

# loop version 1
for (p in primes) {
  print(p)
}

# loop version 2
for (i in 1:length(primes)) {
  print(primes[i])
}
```

When looping over a list - don't forget you need to select the list elements with [[]]

#### Nested Loop 

```
for (var1 in seq1) {
  for (var2 in seq2) {
    expr
  }
}
```


The tic-tac-toe matrix ttt has already been defined for you

>for (i in 1:nrow(ttt)) {
  for (j in 1:ncol(ttt)) {
    print(paste ("On row", i, "and column", j, "the board contains", ttt[i,j]))
  }
}

##### Control Flow 

Code the for loop with conditionals

>for (li in linkedin) {
  if ( li > 10) { print ("You're popular!")
    
  } else { print ("Be more visible!")
    
  }
  print(li)
}


-   The  `break`  statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
-   The  `next`  statement skips the remainder of the code in the loop, but continues the iteration.

>Adapt/extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  

  
>if (li > 16) { 
  print ("This is ridiculous, I'm outta here1")
  break
  }
  
>if (li < 5) {
  print ("This is too embarassing!")
  next
  }
  
  print(li)
}


`strsplit`
Split the elements of a character vector x into substrings according to matches to substring split within them


>rquote <- "r's internals are irrefutably intriguing"
chars <- strsplit(rquote, split = "")[[1]]

 >Initialize rcount
rcount <- 0

>for (char in chars) {if (char == "r") rcount <- rcount+ 1
  if (char == "u") break
  }
Print out rcount
print (rcount)


Functions: 
`help (function)	`
`?function`
`args()`

Required vs optional arguments

Optional arguments have a default value which is used if the arguments are not explicitly specified.

`trim` When the `trim` argument is not zero, it chops off a fraction (equal to `trim`) of the vector you pass as argument `x`.

### Functions inside Functions 

### Writing function

 1. solves a well defined problem
 2. black box principle

Input
Function
Output

 3. Doesn't matter if you don't understand what's under the hood

Creating your own function 
```
my_fun <- function(arg1, arg2) {
  body
}

```

#### Function scooping

R passes argument by value - it means that an R function cannot change the variable that you input to that function  

Different ways to use r built in functions
Created new functions 

## R Packages
Bundles of code, data, documentation and tests which are easy to share

1. Install packages
- base package: auto installed
> install.packages ("ggvis")

2. They go to CRAN (Comprehensive R Archive Network)
3. Load Packages
-Gets attached to search list
>->search()

7 packages are attached by default
If packages is not installed and loaded errors will occur

> library ("ggvis")
> require ()

### lapply/sapply/vapply
lapply ()
always returns a list

>unlist (lapply (vector, nchar))

### Anonymous functions 


sapply - simplify apply 

The first argument of [`sapply()`](http://www.rdocumentation.org/packages/base/functions/lapply) is the list or vector `X` over which you want to apply a function, `FUN`. Potential additional arguments to this function are specified afterwards (`...`):

`lapply()` and `sapply()`? The former returns a list, while the latter returns a vector that is a simplified version of this list.

Duplicating code should be avoided as much as possible. 

vapply
```
vapply(X, FUN, FUN.VALUE, ..., USE.NAMES = TRUE)
```

### RECAP:
`lapply()`
apply function over list or vector
output = list

`sapply ()`
apply function over list or vector 
try to simplify list to array

`vapply ()`
apply function over list or vector
explicit specify output 


Useful Functions

seq(): Generate sequences, by specifying the from, to, and by arguments.
rep(): Replicate elements of vectors and lists.
sort(): Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.
rev(): Reverse the elements in a data structures for which reversal is defined.
str(): Display the structure of any R object.
append(): Merge vectors or lists.
is.*(): Check for the class of an R object.
as.*(): Convert an R object from one class to another.
unlist(): Flatten (possibly embedded) lists to produce a vector.

##### Regular Expression 

Sequence of characters that form a search pattern to match strings.

- patter existence
- pattern replacement
- pattern extraction

- Cleans data

grepl(), which returns TRUE when a pattern is found in the corresponding character string.
grep(), which returns a vector of indices of the character strings that contains the pattern.
Both functions need a pattern and an x argument, where pattern is the regular expression you want to match for, and the x argument is the character vector from which matches should be sought.


`grepl (pattern = <regex> ,x = <string>)`

Meta characters

|Metacharacer|What it does  |
|--|--|
| `^` |matches first charachter  |
|`$`| matches last character|
|`|`| OR operator|
|.*| which matches any character (.) zero or more times (*)
|\\s| Match a space. The "s" is nromally a character|
|[0-9]+| Match the numbers 0-9, at least once (+)|
|([0-9]+)| Parenthesis are used to make parts of the matching string available to define the replacement|




sub ()
gsub()

Like greply but also has a replacement argument

### Times & Dates

####  Create Date objects

my_date <- as.Date()
default data format, year - month - day (4,2,2)

#### Create POSIXct objects

my_time <- as.POSI

#### Date arithmetic

-   `%Y`: 4-digit year (2019)
-   `%y`: 2-digit year (19)
-   `%m`: 2-digit month (06)
-   `%d`: 2-digit day of the month (24)
-   `%A`: weekday (Monday)
-   `%a`: abbreviated weekday (Mon)
-   `%B`: month (June)
-   `%b`: abbreviated month (Jun)

`as.POSIXct()`
-   `%H`: hours as a decimal number (00-23)
-   `%I`: hours as a decimal number (01-12)
-   `%M`: minutes as a decimal number
-   `%S`: seconds as a decimal number
-   `%T`: shorthand notation for the typical format  `%H:%M:%S`
-   `%p`: AM/PM indicator

### Intro to Tidyverse
A collection of data science tools in R to help transform and visualise data.

Every time you apply a verb, you will use a pipe `% %` 
a pipe says "take whatever is before it and feed it into the next step"


### dplyr package
Filter verb () 
`filter()`
You can specify multiple conditions separated by a comma - these are called arguments


`arrange (column
)`
`arrange (desc(column))`

`filter (year == 2019) %>% 
arrange (desc())`

| dplyr | What they do  |
|--|--|
| filter |extracting a subset of observations  |
|arrange|sorting by ASC order|
|mutate|change or adds variables|


### summarize verb

`summarize()` turns many rows into one rows

You can combine
filter + summarize

%>%

- mean
- sum
- median
- min
- max

### group_by verb
use before summarize but after filter
`group by` turns groups into one row each


### ggplot2

code to create a graph:
Data, mapping of variables in your data to aesthetics in your graph. An aesthetic is a visual dimension of a graph that can be used to communicate information. 

`ggplot(data, aes (x = xaxis, y = yaxis)) + geom_point() + scale_x_log10()`
using log spreads out the points on the x axis.


* Scatter plots
* Line plots - change over time
* Bar plots - comparing stats for several 
* Historgrams -distribution 
* Box plots

`geom_line()`

`geom_col()` x = categorical variable, y = variable that determines the height of the bar

`geom_histogram()` only one aes(x)
binwidth 
`geom_boxplot()` a simple way of representing statistical data on a plot in which a rectangle is drawn to represent the second and third quartiles, usually with a vertical line inside to indicate the median value. 
`ggtitle("title name")` add's a title to the chart





