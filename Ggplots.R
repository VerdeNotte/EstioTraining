install.packages ("dplyr")
install.packages ("ggplot2")

library (dplyr)
library (ggplot2)
dia <- diamonds

# Scatter plots

ggplot(dia) +
  geom_point(aes(x=carat,y=price)) #Simple

ggplot(dia) + geom_point(aes(x=carat,y=price,color=clarity,alpha=color))
#Color is clarity, alpha is color

  ggplot(dia) + geom_point(aes(x=carat, y = price,color = clarity, shape = color)) + xlim(c(NA,3.5))
#Limit the x axis (What is NA doing?) - Limitng the x asis = carat by 3.5, NA = Not assigned

  ggplot(dia) + geom_point(aes(x=carat, y=price, color=clarity, shape=color)) + xlim(c(2,3.5)) + facet_wrap(~cut)

  ggplot(dia) + geom_point(aes(x=cut, y = price, color =clarity, shape = color)) + #Not very good... Discrete X asis
    ylim(c(NA,10000))
  
  ggplot(dia) + geom_jitter(aes(x=cut, y=price, color = clarity, alpha = color)) + ylim (c(NA,10000))
  
  #Box plots
  
  ggplot(dia) + geom_boxplot(aes(x=color, y=price))
#This is a simple box plot
  
  ggplot (dia) + geom_boxplot(aes(x=color, y= price, color=cut))+facet_wrap(~clarity)
  
  ggplot(dia) + geom_boxplot(aes(x=color, y=price, color = cut))
#A few too many plots here. Its facet wrap by Clarity.

#Histograms
ggplot(dia) +geom_histogram(aes(x=carat))
#simple Histogram. Less than 0.5 carat is the most popular carat sold over 15000.

ggplot(dia) + geom_histogram (aes(x=carat),binwidth = 0.01) + xlim (c(NA,3))
#Finer histogram

ggplot(dia) + geom_histogram (aes(x=carat), bins = 5) + xlim(c(NA,3))
#Specify the number of bins rather than the binwidth. Bins being columns

#Frequency plots

#Simple
ggplot(dia) + geom_freqpoly(aes(x=carat),binwidth=0.01)+xlim(c(NA,3))

ggplot (dia) + geom_density(aes(x=carat, fill = cut)) + xlim (c(NA,3))
#Density plot, fill added

#Improved visual
ggplot(dia) + geom_density(aes(x=carat,fill=cut), color = NA, alpha = 0.3) + xlim(c(NA, 3))

#A violin plot - Distribution of x values as a function of Y values
ggplot(dia) + geom_violin(aes(x=carat,y=price, fill = "red"),color=NA, alpha= 0.75) + xlim(c(NA,3))

#Split the distribution onto the different facets
ggplot(dia) + geom_violin(aes(x=carat, y=price, fill =cut), color = NA, alpha = 0.75) + xlim(c(NA,3)) + facet_wrap(~cut)

#Simple bar plots

ggplot(dia) + geom_bar(aes(x=color))
#When you do a simple plot, y axis is always COUNT

#Split colour by cut - Overlapping bars
ggplot(dia) + geom_bar(aes(x=color,fill=cut))

#Side by side... position = 'dodge'

ggplot(dia) + geom_bar(aes(x=color, fill =cut), position = "dodge")
#Dodging preserves the vertical position of an geom while adjusting the horizontal position. 