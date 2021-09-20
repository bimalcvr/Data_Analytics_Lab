normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
#2(a)
v1 <- c(3,8,4,5,0,11)
v1
P<-normalize(v1)
P
#2.(b)
v2 <- c(11,30,88,4,5,1)
v2
Q<-normalize(v2)
Q
#2.(c)
RB<-rbind(P, Q)
RB
#2.(D)
install.packages("philentropy")
library(philentropy)
distance(RB, method = "euclidean")



# define a probability density function P
P <- 1:10/sum(1:10)
# define a probability density function Q
Q <- 20:29/sum(20:29)

# combine P and Q as matrix object
x <- rbind(P,Q)

library(philentropy)

# compute the Euclidean Distance with default parameters
distance(x, method = "euclidean")

# euclidean 
# 0.1280713 

# 3. Compute Manhattan distance and cosine similarity after performing (a),(b),(c) steps of
# Q.2.
distance(x, method = "manhattan")
# manhattan 
# 0.3525046 


# Question 3: Compute Manhattan distance and cosine similarity after
# performing (a),(b),(c) steps of Q.2.
library(philentropy)
manhattan_distance <- dist(x, method = 'manhattan')
manhattan_distance

# cosine similarity
library(lsa)
cosine_function <- cosine(x)
View(cosine_function)