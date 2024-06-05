#Labsheet 5

#1Load the dataset
data <- read.csv("C://Users//Thejas Venugopal//Downloads//sales_data.csv")

#2   Check data structure
typeof(data)

#3Find the Summary statistics
summary(data)

#4	Scatter Plot - Create a scatter plot to visualize the relationship between 'quantity' and 'revenue'.

plot(data$quantity,data$revenue,xlab="Quantity",ylab="Revenue")



#5Bar Plot - Create a bar plot to display the total revenue for each 'category'.
 
category_revenue <- data %>% group_by(category) %>% summarise(total_revenue = sum(revenue))
#typeof(category_revenue)

print(category_revenue$total_revenue)
barplot(category_revenue$total_revenue,xlab = "category",ylab="category_revenue",names=category_revenue$category )


#6Line Plot - Create a line plot to show the trend of 'revenue' over time.

data$date<-as.Date(data$date, format="%d-%m-%Y")
plot(data$date,data$revenue,type="l")

#7Histogram - Create a histogram to visualize the distribution of 'price'.
hist(data$price)

data<-na.omit(data)


#8 Pie Chart - Create a pie chart to display the percentage distribution of products by 'category'.
categories <- data %>% group_by(category) %>% summarise(total_quantity = sum(quantity))
pie(categories$total_quantity,categories$category)



#9Stacked Bar Plot - Create a stacked bar plot to show how the 'revenue' is distributed among different 'categories' over time.

#print(category_revenue)
#barplot(as.matrix(category_revenue))


#10 Box Plot - Create a box plot to visualize the distribution of 'revenue' within each 'category'. 
#boxplot(category_revenue$total_revenue~category_revenue$category)

#library(ggplot2)

#crop=ggplot(data=category_revenue)+geom_boxplot()
#crop

boxplot(data$revenue ~ data$category)