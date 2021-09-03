
# loading iris dataset
data_frame <- read.csv("D:/R/Iris.csv")
View(data_frame)
# 1a)
#H <- cumsum(iris$Petal.Length)
H <- (iris$Petal.Length)
barplot(H)


#1b)
library(RColorBrewer)
barplot(table(iris$Species,iris$Petal.Length),col  = brewer.pal(3,"Set1"))

#1c)
boxplot(iris$Sepal.Length~iris$Species,col=topo.colors(3))

#1d)
plot(x=iris$Petal.Length,y=iris$Species) #Multivariate Scatter Plot
