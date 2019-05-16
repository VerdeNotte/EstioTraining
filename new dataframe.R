player <- c('Magnus Carlsen', 'Gawain Jones', 'Hou Yifan')
games <-  c(1254,430,600)
dateofbirth <- as.Date(c('1990-11-1','1987-12-11', '1991-4-3'))
                       
playerinfo <- data_frame(player, games,dateofbirth) 
playerinfo1 <- data.frame(player, games, dateofbirth, stringsAsFactors = FALSE)

thelist <- list('player_string',as.integer(21),playerinfo)

#There is a reason for the funky reason. Storing different data types is hard for the computer to do. Normally the computer knows how much memory to assign to each thing.
#That is why we have different datatypes. 
#A list gets around it by boxing up(wrappin up) each element. So the computer only sees the boxes

thelist [1]
#You first are seeing the box, then the context of the box
thelist[[1]]
#Ignore the box and go straight to the item.


newlist <- list('player_string',as.integer(21),thelist)
#Is this a list within a list?

newlist[1]

list1 <- list(a = 2, b = 3)
list2 <- list(c = "a", d = "b")
mylist <- list(list1, list2)

mylist
newlist
