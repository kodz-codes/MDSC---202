# 1. Eigen Values
# 2. Eigen Vectors
# 3. Normalized Eigen Vectors
A <- matrix(data = c(1,-1,0,1,2,1,-2,1,-1), nrow = 3, ncol = 3)
A

# finding out eigen values and eigen vectors using eigen function.
ev_values = eigen(A)
eigen_values <- ev_values$values
eigen_values
eigen_vectors <- ev_values$vectors
eigen_vectors

# Normalizing the eigen vectors 
normalied_vectors <- eigen_vectors / sqrt(rowSums(eigen_vectors^2))
normalied_vectors

