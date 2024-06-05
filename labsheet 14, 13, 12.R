#labsheet 15, 14, 13 & 12
#1 Install and load necessary packages  (caret, e1071)
library("caret")
library("e1071")

#2 Explore the dataset
summary(data)
typeof(data)
head(data)

#3 Split the data into training (70%) and testing (30%) sets
set.seed(123)
n<-nrow(iris)
train_index<-sample(n, size=floor(0.7*n))
train<-iris[train_index, ]
test<-iris[-train_index, ]

#4 DECISION TREE
library(rpart)
model <- rpart(Species ~ ., data = train_data, method = "class")
plot(model)
text(model)

#Predictions on test set
predictions <- predict(model, test_data, type = "class")
print(predictions)

#5 NAIVE BAYES CLASSIFICATION MODEL
naive_model <- naiveBayes(Species ~ ., data = train)

#Predictions on test set
predictions <- predict(naive_model, test)
print(predictions)

#6 KNN
#extract features and labels for training and testing sets
X_train<-train[, 1:4]
y_train<-train$Species
X_test<-test[, 1:4]

library(class)
k<-3
knn_model=knn(train = X_train, test= X_test, cl=y_train,k=k)

#Predictions on test set
predictions<-knn_model
print(predictions)

#7 RANDOM FOREST TREES
rf_model <- randomForest(Species ~ ., data=train_data, ntree=100)

#predictions on test set
predictions <- predict(rf_model, test_data)
confusion_matrix <- table(test_data$Species, predictions)
print(confusion_matrix)

#8 EVALUATION METRICS
#accuracy
accuracy <- mean(predictions == test_data$Species)
print(paste("Accuracy:", accuracy))

#confusion matrix
confusion_matrix <- table(predictions, test$Species)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
print(confusion_matrix)

