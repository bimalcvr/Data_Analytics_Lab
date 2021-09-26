#1.a
install.packages("ClusterR")
install.packages("cluster")
library(ClusterR)
library(cluster)
airQ<-read.csv("D:/R/airquality.csv")
airQ
plot(airQ$Ozone, airQ$Wind)

#1.b
install.packages('amap')
library(amap)
set.seed(240) # Setting seed
AQ<-na.omit(airQ)#omitting NA rows
AQ
#1.a.i
KM_E_1<- Kmeans(AQ, centers = 3,iter.max = 30, nstart = 20, method="manhattan")
KM_E_1
KM_E_1$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_E_1$cluster, 
     main = "K-means with 30 iterations")


KM_E_2<- Kmeans(AQ, centers = 3,iter.max = 40, nstart = 20, method="manhattan")
KM_E_2
KM_E_2$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_E_2$cluster, 
     main = "K-means with 40 iterations")


KM_E_3<- Kmeans(AQ, centers = 3,iter.max = 50, nstart = 20, method="manhattan")
KM_E_3
KM_E_3$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_E_3$cluster, 
     main = "K-means with 50 iterations")

#1.a.ii
KM_E_1$centers
KM_E_1$centers[, c("Solar.R", "Wind")]
points(KM_E_1$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

KM_E_2$centers
KM_E_2$centers[, c("Solar.R", "Wind")]
points(KM_E_2$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

KM_E_3$centers
KM_E_3$centers[, c("Solar.R", "Wind")]
points(KM_E_3$centers[, c("Solar.R", "Wind")], 
       col = 1:3, pch = 8, cex = 3) 

#1.b.iii
KM_3<- Kmeans(AQ, centers = 3,iter.max = 30, nstart = 20, method="manhattan")
KM_3
KM_3$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_3$cluster, 
     main = "K-means with 3 clusters")


KM_4<- Kmeans(AQ, centers = 4,iter.max = 30, nstart = 20, method="manhattan")
KM_4
KM_4$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_4$cluster, 
     main = "K-means with 4 clusters")


KM_5<- Kmeans(AQ, centers = 5,iter.max = 30, nstart = 20, method="manhattan")
KM_5
KM_5$cluster
plot(AQ[c("Solar.R", "Wind")], 
     col = KM_5$cluster, 
     main = "K-means with 5 clusters")








# for second dataset
wine<-read.csv("D:/R/wine.csv")
wine
plot(wine$Alcohol, wine$Malic.acid)

#1.b
#install.packages('amap')
#library(amap)
set.seed(240) # Setting seed
WN<-na.omit(wine)#omitting NA rows
WN
#1.a.i
WN_1<- Kmeans(WN, centers = 3,iter.max = 30, nstart = 20, method="manhattan")
WN_1
WN_1$cluster
plot(WN[c("Alcohol", "Malic.acid")], 
     col = WN_1$cluster, 
     main = "K-means with 30 iterations")


WN_2<- Kmeans(WN, centers = 3,iter.max = 40, nstart = 20, method="manhattan")
WN_2
WN_2$cluster
plot(WN[c("Alcohol", "Malic.acid")], 
     col = WN_2$cluster, 
     main = "K-means with 40 iterations")


WN_3<- Kmeans(WN, centers = 3,iter.max = 50, nstart = 20, method="manhattan")
WN_3
WN_3$cluster
plot(WN[c("Alcohol", "Malic.acid")], 
     col = KM_3$cluster, 
     main = "K-means with 50 iterations")


#1.a.ii
WN_1$centers
WN_1$centers[, c("Alcohol", "Malic.acid")]
points(WN_1$centers[, c("Alcohol", "Malic.acid")], 
       col = 1:3, pch = 8, cex = 3) 

WN_2$centers
WN_2$centers[, c("Alcohol", "Malic.acid")]
points(WN_2$centers[, c("Alcohol", "Malic.acid")], 
       col = 1:3, pch = 8, cex = 3) 


WN_3$centers
WN_3$centers[, c("Alcohol", "Malic.acid")]
points(WN_3$centers[, c("Alcohol", "Malic.acid")], 
       col = 1:3, pch = 8, cex = 3) 

#1.b.iii
Wine_3<- Kmeans(wine, centers = 3,iter.max = 30, nstart = 20, method="manhattan")
Wine_3
Wine_3$cluster
plot(wine[c("Alcohol", "Malic.acid")], 
     col = Wine_3$cluster, 
     main = "K-means with 3 clusters")


Wine_4<- Kmeans(wine, centers = 4,iter.max = 30, nstart = 20, method="manhattan")
Wine_4
Wine_4$cluster
plot(wine[c("Alcohol", "Malic.acid")], 
     col = Wine_4$cluster, 
     main = "K-means with 4 clusters")


Wine_5<- Kmeans(wine, centers = 5,iter.max = 30, nstart = 20, method="manhattan")
Wine_5
Wine_5$cluster
plot(wine[c("Alcohol", "Malic.acid")], 
     col = Wine_5$cluster, 
     main = "K-means with 5 clusters")
