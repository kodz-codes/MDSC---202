# Given a Positive definite matrix, find out it's square root matrix.

# Defining the matrix.
mat = matrix(c(3,0,0,0,3,0,0,0,3), nrow=3, ncol=3)
print("Matrix: ")
print(mat)

# Getting Eigen Values and Eigen Vectors
eigen_data = eigen(mat)

print("eigen values:")
print(eigen_data$values)

print("eigen vectors:")
print(eigen_data$vectors)

# Square root of Eigen Values
sqrt_eigvalues = sqrt(eigen_data$values)
print("Square root of eigen values:")
print(sqrt_eigvalues)

# Diagonal Matrix of Eigen Values
diag_mat = diag(sqrt_eigvalues)
print("Diagonal matrix of eigen values:")
print(diag_mat)

# Computing Square root matrix
sqrt_Matrix = eigen_data$vectors %*% diag_mat %*% solve(eigen_data$vectors)
print("Square root of M:")
print(sqrt_Matrix)