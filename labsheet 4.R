#LAB 4
library(dplyr)
# Load the dataset
data <- read.csv("C://Users//Thejas Venugopal//Downloads//sales_data.csv")

# Check data structure
print(typeof(data))

# Find the Summary statistics
print(summary(data))

# Check for missing values
print(which(is.na(data)))

# Remove rows with missing values
data <- na.omit(data)

# Remove duplicate rows
data <- unique(data)

# Calculate the total revenue in the sales data
total_revenue <- sum(data$revenue)
print(total_revenue)

# Calculate the total revenue by product
product_revenue <- data %>% group_by(product) %>% summarise(total_revenue = sum(revenue))
print(product_revenue)

# Find the product with the highest revenue
highest_revenue_product <- product_revenue %>% arrange(desc(total_revenue)) %>% head(1)
print(highest_revenue_product)

# Calculate the average price
average_price <- mean(data$price)
print(average_price)

# What was the total quantity of products sold by the company?
total_products_sold <- sum(data$quantity)
print(total_products_sold)

# Which category had the highest revenue? How much revenue did it generate?

category_revenue <- data %>% group_by(category) %>% summarise(total_revenue = sum(revenue))
highest_category_product <- category_revenue %>% arrange(category_revenue) %>% head(1)
print(highest_category_product)

# What was the average revenue per sale?
average_revenue <- mean(data$revenue)
print(average_revenue)

# What was the total revenue generated in each quarter of the year? (i.e. Q1, Q2, Q3, Q4)
data$quarter <- quarters(as.Date(data$date, format="%d-%m-%Y"))


total_revenue_per_quarter <- data %>%
  group_by(quarter) %>%
  summarize(total_revenue = sum(revenue))
print(total_revenue_per_quarter)

