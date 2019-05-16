install.packages ("ggplot2")
library ("ggplot2")
install.packages ("readr")
library ("readr")
heights <- read_csv ("C:/Users/sue.maroroa/Downloads/Heights.csv")
heights1 <- read.csv("C:/Users/sue.maroroa/Downloads/Heights.csv")
# Default function in R
head (heights)
summary (heights)

plot (heights$age,heights$height)
ggplot (data=heights, mapping = aes(x=age, y=height, color = sex))+geom_point()
ggplot (data=heights, mapping = aes(x=earn, fill = sex)) + geom_histogram(binwidth = 4000, alpha = 0.5)
# Plotting income for both sexes.
ggplot(heights) + geom_boxplot(mapping = aes (x= race, y = earn, color = sex))
# Plotting Race vs income, shows White men are the highest earners
ggplot (data = heights, mapping = aes(x=earn, y = age)) + geom_point()

ggplot(data=heights, mapping = aes (x=earn, fill = race)) + geom_histogram(binwidth = 4000, alpha = 0.5)
# Histograms shows how many peopel are there in the data set. Issues with histograms in R is that all you need is the x axis.
ggplot(data=heights, mapping = aes (x=earn, fill = race)) + geom_histogram(binwidth = 1000, alpha = 0.5)
#Alpha affects the transparency, graphics
ggplot(data=heights, mapping = aes (x=earn, fill = race)) + geom_histogram(binwidth = 4000, alpha = 0.25)
ggplot(data=heights, mapping = aes (x=earn,fill = race)) + geom_histogram(binwidth = 4000, alpha = 0.5) + geom_density(color="darkblue", fill="lightblue")
ggplot (data=heights, mapping = aes (x = earn, fill = race, y=..density..)) + geom_histogram(binwidth = 4000, alpha = 0.5)
# instead of a set count, it reads of a porportion. If you were to take all the bars it would = 1. 
ggplot (data = heights, mapping = aes (x = earn, y = height, colour = sex)) + geom_point(alpha = 0.5) + geom_smooth(method = 'lm', formula = y~x,show.legend = T, se = T)
#The regression line has changed as it's now showing Earning by height by either female or male sex.

  
#Code to generate the graphics are simple.