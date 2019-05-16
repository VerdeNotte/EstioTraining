DataEstio <- factor (c("Richard", "Sue", "Katy", "Liz","Tom"),
                    labels = c("Richard", "Sue", "Katy", "Liz","Tom"), ordered = F)
                    
#Drop down menu, second bit is telling us the option

View (DataEstio)
#Look at the data

#All we want to do is add in another level but there's an issue
#Not on the fictional drop down menu
DataEstio[6] <- "Rebecca"
DataEstio[7] <- "Brenda"

labels(DataEstio) 
#gives the number of the label

labels(DataEstio) <- c(labels(DataEstio), "Rebecca")
#Gives output and also assign something to it

install.packages("arules")
library (arules)

labels(DataEstio) <- c(labels(DataEstio), c("Rebecca"))
View (DataEstio)
