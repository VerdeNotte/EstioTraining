# 16th May 2019 Basics of R

# Basic concepts of R
A basic concept in statistical programming is called a **variable**. A **variable** allows you to store a value or an object. This means later on you'll be able to easily access the value or object you stored.

### Basic Data Types

| Value       | Class| Example |
| ------------- |:-------------:| -----:|
| Decimal values (Double floating point) | Numeric | 2.3
| Natural number | Integer      |  5 |
| Boolean values |Logical    |   TRUE or FALSE (T or F) |
| Text or string values|    Characters   |   "Sue"|
`class()`checks the class of the variable

..* Vector: One dimensional array. Must contain the same data type
..* Matrix: Two dimensional array. Contains rows and columns Must contain the same data Types
..* DataFrame: Two dimesional objects - Within a column all elements must contain the same datatype but different columns can have different datatype
..* List: Allow you to gather a variety of objects under a name in an ordered way. These objeects don' t have to be related to each other **super data type**

## Vector

1. Assign variables
`vec <- c (1,2,3)`

If you want to name a vector you can use the `names(v)`

## Matrix

1. assign variables using c <- `var1 <- c(1,3,44,2)` `var2 <- c("Sue", "Rebecca", "Richard")`
2. Make into one vector
3. Turn that vector into a matrix by  `matrix(vector, byrow= TRUE,nrow)`

`matrix(1:10, byrow= TRUE, nrow = 5)` This produces a matrix with 5 rows with the number 1 to 10 placing it into the Matrix by row
`matrix(1:10, byrow= FALSE, nrow = 5)`This produces a matrix with 5 rows with the number 1 to 10 placing it into the Matrix by column

1st argument is the collection of elements that will be put into the matrix, the argument `byrow= TRUE` indicates it needs to be filled by row. `byrow=FALSE` indicates it will be filled by the column. `nrow` = number of rows.

### Naming a matrix
`rownames(my_matrix) <- vec1`
`colnames(my_matrix) <- vec2`

`rowSums(my_matrix)` calculates each row of a matrix.

You can add a column or multiple columns to a matrix with the `cbind()` function, which merges matrices and/or vectors together by column. For example:
`super_matrix <- cbind(matrix1, matrix2, vec1, vec2)`

You can add rows by the `rbind()` function

### Arithmetics with Matrices

`super_matrix` is your matrix

`newcalculation <- super_matrix/2`

### Matrix elements
`[]` Select one or multiple elements from a matrix

`my_matrix[1,2]` selects from the first row, second columns
`my_matrix[1:3,2:4]` Selects row 1 to 3, Column 2 to 4

If you want to select all elements from the first row or column, no numbers are needed.

`my_matrix[4,]` All elements from the 4th row
`my_matrix[,9]` All elements from the 9th column

## Factor

A statistical type of data to store categorical variables

..* categorical variable: limited number of categories,
- ordinal
- nominal
..* continuous variable: infinite number of values

It's important for R to know as the statistical models will treat the data differently.

### Creating a factors
`factor()`
1. Create a vector
2. Convert the vector into a factor

`nameofnewvec <- factor(oldvec)`

### Factor levels
`levels()` provides access to the levels attribute of a ariable. 1st form returns the value of it's argument and the second sets the attribute.

`days <- c("F","M", "Tu","Th", "W", "W")`

`daysoftheweek <- factor (days)`

`levels(daysoftheweek) <-c ("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")`


or:

`results <- c("D", "HD", "M", "P", "F")`
`resultsfactor <- factor(results)`

`levels (resultsfactor) <-c ("Distinction", "High Distinction", "Merit", "Pass", "Fail")`

`results <- c("D", "HD", "M", "P", "F")``

`resultsfactor <- factor(results)`

`levels (resultsfactor) <-c ("High Distinction", "Distinction", "Merit", "Pass", "Fail")`

The order in which you assign the levels is important. If you don't specify R will automatically assign them alphabetically

daysoftheweek`

### Summarizing a factor
You can use the 'summary()'

Comparing values in a factor bring NA as it doesn't make sense when using nominal factor levels.

Ordered factors

`factor (some_vector,
      order = True,
      levels = c("level1, level2"))`

In the above code, order indicates the factors are ordered and levels gives the correct order.

### Comparing ordered factors

You can't compare nominal factors. You have to tell R the levels.

1. Create vector
2. Change to factor then + order and levels
3. factor value[] comparison operator factor level[]

`results <- c("D", "HD", "M", "P", "F")`

`resultsfactor <- factor(results)`

`factor (results, order = TRUE, levels = c(" High Distinction", "Distinction", "Merit", "Pass", "Fail")`

## DataFrames

`head()` First observations
`tail()` Last observations
`str()` Structure of the Df

How to make a DataFrame:
1. Define vector
2. Create a dataframe from the vectors

`dfname <- data.frame (vec1,vec2,vec3)`

Selecting dataframe elements are similar to vectors and matrices. You can also use the variable name

`dfname[1:3, "variabletype"]`
If your columns have name you can use the `$` to choose the column within that dataframe

`newvector <- dfname$nameofcolumn`

This piece of code:
`dfname[nameofcolumn,]` or
`subset(dfname, subset = some_condition)` More concise and understandable for people to read the code.
