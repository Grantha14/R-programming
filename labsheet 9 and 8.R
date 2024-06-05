
data<-read.csv("C://Users//Dell//Downloads//R programing/Iris.csv")

#1
library("caret")
library("e1071")

#2
data(iris)
head(iris)

#3
sample<-sample(c(TRUE,FALSE),nrow(iris),replace = TRUE,prob=c(0.7,0.3))
train<-iris[sample, ]
test<-iris[!sample, ]
dim(train)
dim(test)
head(train)

#4
library(e1071)

svm_model <- svm(Species ~ ., data = train_data, kernel = "radial", cost = 10, gamma = 0.1)

#5
predictions <- predict(svm_model, newdata = test_data[, -5])

#6
library(caret)

confusionMatrix(predictions, test_data$Species)

#7
test_percentages <- c(0.2, 0.4, 0.5)

for (percentage in test_percentages) {
  # Split the data into training and testing sets
  set.seed(123)
  train_index <- sample(1:nrow(iris), (1 - percentage) * nrow(iris))  # Percentage for training
  train_data <- iris[train_index, ]
  test_data <- iris[-train_index, ]
  
  # Train the SVM model
  svm_model <- svm(Species ~ ., data = train_data, kernel = "radial")
  
  # Make predictions on the test data
  predictions <- predict(svm_model, test_data[, -5])  # Exclude the 'Species' column
  
  # Evaluate the model
  confusion_matrix <- table(predictions, test_data$Species)
  accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
  cat("Accuracy for", percentage * 100, "% test set:", accuracy, "\n")
}


