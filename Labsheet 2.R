#vectors
#labsheet 2
#1 Create a numeric vector containing the 10 elements and display the same.
v1<-c(0,1,2,3,4,5,6,7,8,9)
print(v1)

#2 Given a numeric vector, extract and print the values at even-numbered indices.
#for(i in v1) if (i%%2==0)
 # print(i)

#for(i in 1:length(v1)) if(i%%2==0)
#  print(v1.i)
v2<-v1[seq(2, length(v1),by=2)]
paste("even",v2)

#3 Take two numeric vectors of the same length and perform element-wise addition and subtraction.
v3<-c(10,11,12,13,14,15,16,17,18,19)
v4<-v1+v3
print(v4)

#4 Calculate the mean and median of a numeric vector containing test scores.
test_scores<-c(100,99,98,75,87)
print(mean(test_scores))
print(median(test_scores))




#5 Perform Matrix addition and subtraction using R Programming.
m1<-matrix(2:10,nrow=3,ncol=3)
print(m1)
m2<-matrix(1:9,nrow=3,ncol=3)
print(m2)
addition<-m1+m2
print(addition)
subtraction<-m1-m2
print(subtraction)


#6 Write a program to create a 2D array with random integers and display it.
random_m<-matrix(floor(runif(1,min=1,max=10)):floor(runif(1,min=2,max=20)),nrow=2,ncol=2)
print(random_m)


#7 Write a program to access and print specific elements, rows, and columns of a 2D array.
m3<-matrix(1:4,nrow=2,ncol=2)
print(m3)
paste("element at (1,1): ",m3[1,1])
paste("element at (1,2): ",m3[1,2])
paste("element at (2,1): ",m3[2,1])
paste("element at (2,2): ",m3[2,2])
m4<-m3[1,]
print("elements in first row:")
print(m4)
m5<-m3[2,]
print("elements in second row:")
print(m5)
m6<-m3[,1]
print("elements in first column:")
print(m6)
m7<-m3[,2]
print("elements in second column:")
print(m7)


#8 Calculate and display the mean, median, and standard deviation of a 2D array.
a1<-matrix(1:4,nrow=2,ncol=2)
print(a1)

print("row means:")
print(rowMeans(a1))

library(matrixStats)

print("row medians")
print(rowMedians(a1))

print("row std_dev")
print(rowSds(a1))

print("column mean")
print(colMeans(a1))

print("column median")
print(colMedians(a1))
print("column std_dev")
print(colSds(a1))



#9 Create a program that constructs a list with elements of different data types (numeric, character, logical).
l1<-list(n=12,c="thejas",logi=TRUE)
print(l1)


#10 Write a program that accesses and prints specific element of a list.
numeric_element<-l1$n
character_element<-l1$c
logical_element<-l1$logi
print(numeric_element)
print(character_element)
print(logical_element)

#11 Create a program that calculates the length of a list and displays it.
print(length(l1))

#12 Create a program that constructs a character vector from a sequence of strings.
strings<-c("alpha","bravo","charlie","delta")
print(strings)
characters<-as.character(strings)
print(characters)

#13 Write a program to find and display the length of a character vector.
print(length(characters))


c12<-c(1,2,3,4,5)
print(2 %in% c12)