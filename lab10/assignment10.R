install.packages("igraph")
install.packages('expm')
library(expm)
library(igraph)
g <-sample_gnm(4,m= 7, directed = TRUE,loops = 1)
g
plot(g)

#using teleporting factor 0.8
df <- data.frame(pr = page_rank(g, damping = 0.8,personalized=c(0,1,0,1))$vector)
df
#using teleporting factor 0.8
df1 <- data.frame(pr = page_rank(g, damping = 0.8)$vector)
df1

