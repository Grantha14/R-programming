#labsheet 3

#1 Load the Dataset
data<-read.csv("C://Users//Thejas Venugopal//Downloads//sales_data.csv")

print(str(data))

#2 Explore the dataset to understand its structure (head, summary etc)
print(head(data))
print(summary(data))

#3 Identify the missing values
print(which(is.na(data)))

#4 Count missing values in each column
print(sum(is.na(data$date)))
print(sum(is.na(data$product)))
print(sum(is.na(data$category)))
print(sum(is.na(data$price)))
print(sum(is.na(data$quantity)))
print(sum(is.na(data$revenue)))


#5 Handle the Missing Data by applying suitable techniques
na.omit(data)
print(sum(is.na(prices)))


#6-min max  scaling
library(caret)
scaled_data<-preProcess(data,method=c("range"))
print(head(scaled_data))


print(str(preProcess(data,method =c("scale"))))

print(str(data))

#7- z score normalization
m<-mean(data$price)
print(m)
