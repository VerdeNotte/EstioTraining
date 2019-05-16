summary(heights$height)
# Summarizing the height table within the heights DF

#Creating a vector of characters the length of the DF
height_fact <- vector(mode = "character", length = length(heights$height))

height_fact
#Shows empty characters, Our job is to fill it. Each space, corresponds to a row in the table

#Create the factors:

height_fact [heights$height < 64.01 ] <- "short"

height_fact[heights$height >= 64.01 & heights$height < 66.45] <- "medium"

height_fact[heights$height >=66.45 & heights$height <69.85] <- "tall"

height_fact[heights$height >69.85] <- "very tall"
View (height_fact)

#Creating the factor a more advance way.
#First create the vector which containts the summary, then insert the factors as you want.

s <- summary(heights$height)
s[2] #(this will give the 1st quartile, in the height)
#s[1] min
#s[3] median
#s[4]mean
#s[5]3rd quarter
#s[6]max

View (height_fact)

height_fact [heights$height < s[2] ] <- "short"
height_fact [heights$height >= s[2] & heights$height < s[3] ] <- "medium"
height_fact [heights$height >= s[3] & heights$height < s[5] ] <- "tall"
height_fact[heights$height >s[5]] <- "very tall"
View (height_fact)

#Create an ordinal set
height_factors <- factor(height_fact, levels = c("short", "medium", "tall", "very tall"), ordered = T)

heights <- cbind(heights1,height_factors)
#Column bind = cbind

View (heights)

cont_tab <- table(heights$sex, heights$height_factors)
View (cont_tab)
summary (cont_tab)
#Chisq = statistical test, to see if there is signifant differences between groups
#If the p-value returned is very small, it's very likely the sex is having a signifant effect on people's height
#Degrees of Freedom = Example: Number have different amounts they can vary, depending on what you measure
#so let's take 3 numbers
#P-value

summary (heights)

x <- heights$sex