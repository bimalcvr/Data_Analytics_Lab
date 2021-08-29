
#2a
# loading iris dataset
data_frame <- read.csv("D:/R/Iris.csv")
View(data_frame)

# 2b
# finding the mean of all metrics in iris
#colMeans(data_frame[sapply(data_frame, is.numeric)])
findmean <- aggregate(data_frame[, 1:4], list(data_frame$Species), mean)

# 2c
# finding sum of all the metrices and group by metrices
findsum <- aggregate(data_frame[, 1:4], list(data_frame$Species), sum)


#2d
# counting metrices of all the species
# count number of c in each columnn
countedValues <- aggregate(x= data_frame, by= list(data_frame$Species), function(x) length(x))
countedValues

#2e
# maximum of all the species
# maximum of c in each column
maxValues <- aggregate(x= data_frame, by= list(data_frame$Species), max)
maxValues
