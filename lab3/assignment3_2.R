
#import datafile
library(data.table)
river_data <- read.csv("D:/R//PAICOL.csv")
setDT(river_data)
head(river_data)

sapply(river_data, class)
river_data$DATE <- as.Date(river_data$DATE)
sapply(river_data, class)

summary(river_data)

#install.packages("ggplot2")
library(ggplot2)

#2a)Create a line plot of the `LEVEL` with the `ggplot` function.  


library(ggplot2)
ggplot(data = river_data, aes(x = DATE, y = LEVEL)) +
  geom_line() +
  labs(title = "Daily levels of a river") +
  theme_bw()

#2b)Create a scatter plot of the `RAIN` against `LEVEL`.  

ggplot(data = river_data, aes(x = RAIN, y = LEVEL)) +
  geom_point() +
  labs(title = "Scatter plot of RAIN and LEVEL") +
  theme_bw()

#2c)Create a plot of the `RAIN` and `LEVEL`.  


ggplot(data = river_data, aes(x = DATE, y = LEVEL)) +
  geom_line(aes(color = "LEVEL")) +
  geom_line(aes(x = DATE, y = RAIN, color = "RAIN")) + 
  labs(title = "Daily levels & rainfall of a river") +
  theme_bw()


#2d)Find and plot circles on the `LEVEL` plot at the maximum and minimum value.  


data_max <- river_data[which.max(river_data$LEVEL), ]
data_min <- river_data[which.min(river_data$LEVEL), ]

ggplot(data = river_data, aes(x = DATE, y = LEVEL)) +
  geom_line() +
  geom_point(aes(x = data_max$DATE, y = data_max$LEVEL), shape = 1, size = 3, color = "red") + 
  geom_point(aes(x = data_min$DATE, y = data_min$LEVEL), shape = 1, size = 3, color = "blue") + 
  scale_shape_discrete(solid = FALSE) +
  labs(title = "Daily levels of a river") +
  theme_bw()


#2e)Plot the `LEVEL` for the year "2001".  


ggplot(river_data[DATE %between% c("2001-01-01", "2001-12-31")], aes(x = DATE, y = LEVEL)) +
  geom_line() +
  labs(title = "Daily levels of a river in 2001") +
  theme_bw()
