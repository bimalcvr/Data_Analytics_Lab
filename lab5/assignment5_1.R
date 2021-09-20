#1.a
mtcars
attach(mtcars)
#1.b
plot(mtcars$wt, mtcars$mpg, main=" MPG vs WEIGHT ", col="Red")
#1.c
cor(mtcars$mpg, mtcars$wt)


#mtcars
#head(mtcars)
#library(ggplot2)
#Creating a Basic Scatterplot
#ggplot(mtcars, aes(wt, y=mpg)) + geom_point()
#Add names to x and y axis
#ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() + scale_x_continuous("Weight of Car") + scale_y_continuous("Miles Per Gallon")

#Caluclate the correlation coefficient
#cor(mtcars$wt, mtcars$mpg)
