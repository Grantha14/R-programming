#labsheet 11 & 10(dataset mtcars)
#1 REGRESSION MODEL
model <- lm(mpg ~ wt + hp + cyl, data = mtcars)


model <- lm(mpg ~ wt + hp, data = mtcars)

#2 MISSING VALUES
print(which(is.na(data)))

#3 Find MSE & RMSE
mse <- mean((mtcars$mpg - predictions_test)^2)
print(mse)

# Calculate MSE and RMSE
rmse <- sqrt(mse)
mse
rmse
# Get R-squared and Adjusted R-squared values
r_squared <- summary(model)$r.squared
adj_r_squared <- summary(model)$adj.r.squared
r_squared
adj_r_squared

#4 Predictions on test set
predictions_test <- predict(model, newdata = mtcars)
print(predictions_test)

#5 Evaluate the model and evaluation metrics
cat("Mean Squared Error (MSE):", mse, "\n")
cat("Root Mean Squared Error (RMSE):", rmse, "\n")
cat("R-squared:", r_squared, "\n")
cat("Adjusted R-squared:", adj_r_squared, "\n")


