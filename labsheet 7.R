
#1Load the dataset
data <- read.csv("C://Users//Thejas Venugopal//Downloads//sales_data.csv")

#2Calculate the mean (average) of the 'price,' 'quantity,' and 'revenue' columns separately to understand the central tendency of these variables.
data<-na.omit(data)
print(mean((data$price)))
print(mean(data$quantity))
print(mean(data$revenue))
print("----------------")

#3Calculate the median (middle value) of the 'price,' 'quantity,' and 'revenue' columns to understand the data's distribution.
print(median(data$price))

print(median(data$quantity))
print(median(data$revenue))
print("----------------")

#4Compute the variance of 'price,' 'quantity,' and 'revenue' to measure the spread or dispersion of these variables. A higher variance indicates more significant variability.
print(var(data$price))
print(var(data$quantity))
print(var(data$revenue))
print("_________________")

#5 Calculate the standard deviation of 'price,' 'quantity,' and 'revenue' to quantify the extent of data dispersion around the mean.
print(sd(data$price))
print(sd(data$quantity))
print(sd(data$revenue))
print("_________________")

#6Generate summary statistics for each numerical column, including count, mean, standard deviation, minimum, and maximum values.
print(summary(data$price))
print(summary(data$quantity))
print(summary(data$revenue))
print("_________________")

#7Explore Date Information: If 'date' is in a date format, calculate the earliest and latest date in the dataset to understand the date range covered by the data.
library(lubridate)
data$date<-as.Date(data$date, format="%d-%m-%Y")
dates<-ymd(data$date)
earliest_date<-min(dates)
latest_date<-max(dates)
print(earliest_date)
print(latest_date)
duration<-latest_date-earliest_date
paste("Duration",duration)
print("____________________________")

#8Correlation Analysis: Compute correlation coefficients (e.g., Pearson's correlation) between 'price,' 'quantity,' and 'revenue' to identify any relationships or dependencies between these variables.
library(stats)
correlation_matrix<-cor(data[c("price","revenue","quantity")])
print(correlation_matrix)
print("______________________________")

#9  Outlier Detection: Use the median and interquartile range (IQR) to detect outliers in 'price,' 'quantity,' and 'revenue.' Values significantly outside the IQR may be considered outliers
median_price<-median(data$price)
iqr_price<-IQR(data$price)
median_quantity <- median(data$quantity)
iqr_quantity <- IQR(data$quantity)

median_revenue <- median(data$revenue)
iqr_revenue <- IQR(data$revenue)

outliers_price <- data$price[data$price < (median_price - 1.5 * iqr_price) | data$price > (median_price + 1.5 * iqr_price)]
outliers_quantity <- data$quantity[data$quantity < (median_quantity - 1.5 * iqr_quantity) | data$quantity > (median_quantity + 1.5 * iqr_quantity)]
outliers_revenue <- data$revenue[data$revenue < (median_revenue - 1.5 * iqr_revenue) | data$revenue > (median_revenue + 1.5 * iqr_revenue)]

print(outliers_price)
print(outliers_quantity)
print(outliers_revenue)
print("_____________________________________________")

#10Frequency Distributions: Create frequency distributions for 'price,' 'quantity,' and 'revenue' to understand the distribution of values within each variable. 
freq_price <- table(data$price)
freq_quantity <- table(data$quantity)
freq_revenue <- table(data$revenue)
print("Frequency Distribution for Price:")
print(freq_price)
print("Frequency Distribution for Quantity:")
print(freq_quantity)
print("Frequency Distribution for Revenue:")
print(freq_revenue)
