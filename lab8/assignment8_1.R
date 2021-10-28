df <- read.csv("https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",
               header = FALSE)#IMPORT IRIS DATA
colnames(df) <- c('Sepal.Length','Sepal.Width','Petal.Length','Petal.Width','Species')#RENAMING COLUMNS
df$Species <- as.numeric(as.factor(df$Species))

#DIVIDE  TRAIN AND TEST
sample <- sample.int(n = nrow(df), size = floor(.75*nrow(df)), replace = F)
train <- df[sample, ]
test  <- df[-sample, ]


library(caTools)
library(ROCR)
library(stats4) #Load package stats
library(splines) #Load package splines
#To load package VGAM, need to load package stats4 and splines.
library(VGAM) #Load package VGAM

#decision tree model
library(rpart)
dt_fit <- rpart(train$Species~., data = train, method = 'class')
dt_predict <-list(predict(dt_fit, test, type = 'class'))
dt_predict

#K NEAREST NEIGHBOUS MODEL
library(class)
knn_pred <- knn(train = train, test = test,cl = train$Species, k=10)
commitee <- list("DecisionTree", "knn")
for (p in commitee) {
  print(p)
}
dt_knn <- cbind(data.frame(dt_predict), data.frame(knn_pred))
colnames(dt_knn) <- c("DecisionTree","knn")
dt_knn

#ENTROPY AS A MESAURE OF UNCERTAINTY
vote_entropy <- function(x, type='class', entropy_method='ML') {
  it <- do.call(itertools2::izip, x)
  disagreement <- sapply(it, function(obs) {
    entropy(table(unlist(obs)), method=entropy_method)
  })
  disagreement
}

tx<-vote_entropy(dt_knn)
tx
