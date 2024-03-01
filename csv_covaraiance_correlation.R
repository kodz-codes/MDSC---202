adv_data <- read.csv("stock_01_03_23.csv")
adv_data

mat_data = adv_data[1:74,2:15]
mat_data

# Remove the comas in numeric data
mat_data <- apply(mat_data, 2, function(x) as.numeric(gsub(",", "", x)))
print(mat_data)

# removing the missing values in in the data matrix
mat_data <- na.omit(mat_data)
print(mat_data)

# Finding out no. of observations for variance_convariance matrix
obs <- nrow(mat_data)
print(obs)

# finding the means of each column
means <- colMeans(mat_data)
print(means)

cov_mat <- matrix(NA, nrow = ncol(mat_data), ncol = ncol(mat_data))
cov_mat

for (i in 1:ncol(mat_data)) {
  for (j in 1:ncol(mat_data)) {
    cov_mat[i, j] <- sum((mat_data[, i] - means[i]) * (mat_data[, j] - means[j])) / (nrow(mat_data) - 1)
  }
}         
cov_mat

sdv <- sqrt(diag(cov_mat))
cor_mat <- cov_mat / (sdv %*% t(sdv))
print("Covariance Matrix is as follows :")
print(cov_mat)
print("Correlation Matrix is as follows :")
print(cor_mat)
