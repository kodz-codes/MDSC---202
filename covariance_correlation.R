# Generate a 15 * 2 data matrix and find the varaiance-covariance matrix and correlation coefficient matrix.

# Generating 15 * 2 random matrix data
set.seed(123)

data_matrix <- matrix(sample(1:25, 60, replace = TRUE), nrow = 15, ncol = 2)
print(data_matrix)

x <- data_matrix[, 1]
y <- data_matrix[, 2]

# finding the mean of both x and y
x_bar <- mean(x)
y_bar <- mean(y)
print(x_bar)
print(y_bar)

# calculating the variance and covariance matrix
# Variance
x_var <- sum((x - x_bar)^2) / (length(x) - 1)
y_var <- sum((y - y_bar)^2) / (length(y) - 1)
print(x_var)
print(y_bar)

# Calculating the covariance 
cov <- sum((x - x_bar) * (y - y_bar)) / (length(x) - 1)
print(cov)

# Calculating the correlation
cor <- cov / (sqrt(x_bar) * sqrt(y_bar))
print(cor)

# Calculating the covariance matrix
cov_mat <- matrix(c(x_bar, cov, cov, y_bar), nrow = 2, byrow = TRUE)
print(cov_mat)

# Correlation matrix
cor_mat <- matrix(c(1, cor, cor, 1), nrow = 2, byrow = TRUE)
print(cor_mat)
