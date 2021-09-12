
#1a)In R a simple bar graph can be used to model the probability distribution function.
#Take a random vector and probability associated with it and plot it with a bar graph.
#sample(1:6, 1)
vec <- sample(c("Geeks", "CSE", "R", "Python"),
              50 , replace = TRUE)
# generate the vector of probabilities 
probability <- rep(1/50, 50) 

# plot the probabilities 
plot(probability,
     xlab = "outcomes",
     main = "Probability Distribution") 

#1b)
vec <- sample(c("Geeks", "CSE", "R", "Python"),
50 , replace = TRUE)

# generating frequency table
data <- table(vec)

# frequency table 
print ("Frequency Table")
print (data)

print ("Cumulative Frequency Table")
cumfreq_data <- cumsum(data)
print (cumfreq_data)
plot(cumfreq_data)


#1c)

x<-0:10
y<-dbinom(0:10,10,0.16)
data.frame("Prob"=y,row.names=x)
plot(0:10,dbinom(0:10,10,0.16),,type='h',xlab="",ylab="Probability",
     sub="Number of kids with blue eyes")

#1d)
par(mfrow=c(2,2))
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05")
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8")

#1e)
#v<-sample(0:10)
dpois(0:10, 0.2)
plot(0:10, dpois(0:10, 0.2), pch = 16, ylab = "Probability")


