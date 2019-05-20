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
