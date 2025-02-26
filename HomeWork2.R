# (a) Construct and store a 4x2 matrix filled row-wise
mat <- matrix(c(4.3, 3.1, 8.2, 8.2, 3.2, 0.9, 1.6, 6.5), nrow = 4, ncol = 2, byrow = TRUE)
print(mat)

# (b) Remove any one row and confirm the dimensions are 3x2
mat_removed <- mat[-1, ]  # Removing the first row as an example
print(dim(mat_removed))  # Should return 3 2

# (c) Overwrite the second column with the sorted values of the same column
mat[, 2] <- sort(mat[, 2])
print(mat)

# (d) Delete the fourth row and first column, ensuring a single-column matrix
result_d <- matrix(mat[-4, -1], ncol = 1)  
print(result_d)

# (e) Store the bottom four elements as a new 2x2 matrix
new_mat <- matrix(tail(as.vector(mat), 4), nrow = 2, ncol = 2)
print(new_mat)

# (f) Overwrite specific positions with diagonal values of (e)
diag_values <- diag(new_mat)  
mat[4, 2] <- diag_values[1]
mat[1, 2] <- diag_values[2]
mat[4, 1] <- diag_values[1]
mat[1, 1] <- diag_values[2]
print(mat)
