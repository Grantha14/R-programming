#LABSHEET 6

#1 Load the dataset
data <- read.csv("C://Users//Thejas Venugopal//Downloads//sales_data.csv")

#2Data Exploration:  View the first few rows of the dataset using functions like head() or glimpse() to understand its structure.
library("dplyr")
glimpse(data)
head(data)

#3 Selecting Data - Select specific columns from the dataset (e.g., date and revenue) using the dplyr package's select() function.
na.omit(data)
selected_columns<-data%>% select('date','revenue')
print(selected_columns)

#4Filtering Data - select all rows with revenue greater than 1000 using the dplyr package's filter() function.
filtered_df<-data%>%filter(revenue>1000)
print(filtered_df)

#5Arranging Data - sort by date in ascending or descending order using the dplyr package's arrange() function.
sorted_df<-data%>% arrange(date)
print(sorted_df)

#6Group the data by a categorical variable (e.g., category) using the dplyr package's group_by() function.
grouped_df<-data%>% group_by(category)
print(grouped_df)

#7Calculate summary statistics within each group (e.g., total revenue per category) using functions like summarize().
category_revenue <- data %>% group_by(category) %>% summarise(total_revenue = sum(revenue))
print(category_revenue)

#8Joining Data
#8.1  Create Two dataframe:
 # df1 <- data.frame(ID = 1:5, Name = c("Alice", "Bob", "Charlie", "David", "Eve"))
#df2 <- data.frame(ID = 3:7, Score = c(95, 87, 78, 91, 82))
#8.2 Implement inner_join() and full_join() function to join two dataframes.

df1 <- data.frame(ID = 1:5, Name = c("Alice", "Bob", "Charlie", "David", "Eve"))

df2 <- data.frame(ID = 3:7, Score = c(95, 87, 78, 91, 82))

inner_joined_df<-inner_join(df1,df2,by="ID")
full_joined_df<-full_join(df1,df2,by="ID")
print(full_joined_df)
print(inner_joined_df)


#9Merging Data Sets
#9.1  Create Two dataframe
#9.2  Merge data frames by the 'ID' column
merged_df<-merge(df1, df2, by = "ID")
print(merged_df)
