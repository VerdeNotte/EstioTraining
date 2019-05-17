##16th May 2019

#Summarizing a factor
You can use the 'summary()'

Comparing values in a factor bring NA as it doesn't make sense when using nominal factor levels.

Ordered factors

`factor (some_vector,
      order = True
      levels = c("level1, level2"))``
s
In the above code, order indicates the factors are ordered and levels gives the correct order.

Comparing ordered factors

1. Create vector
2. Change to factor then + order and levels
3. factor value[] comparision operator factor level[]

#DataFrames

`head()` First observations
`tail()` Last observations
`str()` Structure of the Df
