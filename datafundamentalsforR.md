spreadsheetsinteger# Day 1
R
Follows Bodmas.
`#` comments, explain the code which the computer will ignore.

**Always open a new Rscript**

`install.packages ("ggplot2")`
`library("ggplot2)`
`View (dia)`

Note that `View` is with a capital V.

`plot(dia$carat,dia$price)`
Plotting data rom the diamonds database with carat on the x axis and price on the y axis.

Linear regression
multi variable regression

Variables are like nuggets of knowledge.

Correlation is not causation

logarithms - help us write numbers. They are the opposite of power. If we take the logarithm of a number we undo an exponentiation.


`log10 (1000)` is 3 because 10 x 10 x 10 = 1000

..* Raw Data: Data thas has not been processed for use.
01010101

..* Information:
Processed data, organized. This is raw data with context.

..* Knowledge:
Meaningful data to use and learn from. Data in context + visualization. Also the application of information and rules.

## Day 2

Line of best fit = linear regression

Hands on Programming with R by Garrett

method: `lm` is the linear method
        `loess` is the non linear

        Formula: predict y using x

  P value: significant probability values.

  Maths: 2e-16
  2 x 10 to the power of -16
  2 x 10 1/10 to the power of 16 (turns the negative into the positive)

DataTypes in R

* double floating point
* as.interger
* Characters
* Logical

Changing data types into another is called *casting*

Changing character text into numbers is called *parsing*

These are the order of what takes up the least use of memory in R.

1. Logical
2. interger
3. Characters
4. Double precession floating point

There are logical operators
`OR` Required 1 criteria to be met
`&` Requires both criteria to be met

## Arrays
Arrays are like a grid of numbers (similar to a table) but they can have multiple dimensions

`array()` can be used to restructure a vector as an array

`newarray <-array (0, dim-c(3,4,2))`

A new array filed with zeros with 3 rows, 4 columns and 2 dimensions.

A two dimensional array is known as a matrix.

## DataFrames

General form of a matrix like an excel spreadsheet.
We index Data frames like vectors and
arrays.

## Day 3

Lists: Can contain any type of data. It is also less structured

Indexing is differently
`a_list <- ('a string', 'as.interger')`
`a_list[1]`
`a_list[[1]]`

factors:

Qualitative data with characteristics for example hair colour

Binominal: T or F, Y or N
Nominal: Name of things (labels)
Order: Groups with intrinsic ordered

Degrees of Freedom

5, 10, ?
mean = 10
Therefore ? = 15
But 5 and 10 can be any combination that adds to 15 so could change to be 6 and 9, 7 and 8. Therefore the degree of freedom is 2.
