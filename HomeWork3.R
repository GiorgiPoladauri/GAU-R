# Task a: Vector manipulations and logical operations
vec <- c(6, 9, 7, 3, 6, 7, 9, 6, 3, 6, 6, 7, 1, 9, 1)

# i. Elements equal to 6
equal_6 <- vec[vec == 6]

# ii. Elements greater than or equal to 6
greater_than_or_equal_6 <- vec[vec >= 6]

# iii. Elements less than 6 + 2 (i.e., less than 8)
less_than_6_plus_2 <- vec[vec < (6 + 2)]

# iv. Elements not equal to 6
not_equal_6 <- vec[vec != 6]

# Output the results
print("Elements equal to 6:")
print(equal_6)

print("Elements greater than or equal to 6:")
print(greater_than_or_equal_6)

print("Elements less than 6 + 2:")
print(less_than_6_plus_2)

print("Elements not equal to 6:")
print(not_equal_6)


# Task b: Create new vector, fill 2x2x3 array and logical operations
new_vec <- vec[-(1:3)] # New vector by removing first three elements
arr <- array(new_vec, dim = c(2, 2, 3)) # Fill 2x2x3 array

# i. Elements less than or equal to 6/2 + 4
condition1 <- arr <= (6 / 2 + 4)

# ii. After increasing each element by 2, elements less than or equal to 6/2 + 4
arr_increased <- arr + 2
condition2 <- arr_increased <= (6 / 2 + 4)

# Output results
print("Condition 1 (<= 6/2 + 4):")
print(condition1)

print("Condition 2 (after increasing by 2, <= 6/2 + 4):")
print(condition2)


# Task c: Identity matrix and location of elements equal to 0
I10 <- diag(1, 10) # Create a 10x10 identity matrix

# Find locations where elements are equal to 0
zero_positions <- which(I10 == 0, arr.ind = TRUE)

# Output the positions of zeros
print("Positions of zeros in the 10x10 identity matrix:")
print(zero_positions)


# Task d: Logical checks for TRUE values
any_true_condition1 <- any(condition1)
any_true_condition2 <- any(condition2)

# Check if all TRUE values exist in the conditions
all_true_condition1 <- all(condition1)
all_true_condition2 <- all(condition2)

# Output the results
print("Any TRUE in condition1:")
print(any_true_condition1)

print("Any TRUE in condition2:")
print(any_true_condition2)

print("All TRUE in condition1:")
print(all_true_condition1)

print("All TRUE in condition2:")
print(all_true_condition2)


# Task e: Extract diagonal elements from logical matrix and check for TRUE values
diag_elements <- diag(I10) # Extract the diagonal elements of the identity matrix

# Check for TRUE values in diagonal elements
any_true_diag <- any(diag_elements)

# Output the result
print("Any TRUE in diagonal elements:")
print(any_true_diag)


# Task f: Vector manipulations with foo, bar, and baz
foo <- c(7, 1, 7, 10, 5, 9, 10, 3, 10, 8)
bar <- c(8, 8, 4, 4, 5, 1, 5, 6, 6, 8)

# i. Elements in foo greater than 5 OR equal to 2
foo_condition <- foo[foo > 5 | foo == 2]

# ii. Elements in bar less than or equal to 6 AND not equal to 4
bar_condition <- bar[bar <= 6 & bar != 4]

# iii. Elements in foo that satisfy condition (a) AND elements in bar that satisfy condition (b)
common_elements <- intersect(foo_condition, bar_condition)

# iv. Create vector baz as element-wise sum of foo and bar
baz <- foo + bar

# i. Elements of baz greater than or equal to 14 but not equal to 15
baz_condition1 <- baz[baz >= 14 & baz != 15]

# ii. Element-wise division of baz by foo, elements greater than 4 OR less than or equal to 2
division_condition <- (baz / foo) > 4 | (baz / foo) <= 2

# Output results
print("Elements of foo satisfying condition (a):")
print(foo_condition)

print("Elements of bar satisfying condition (b):")
print(bar_condition)

print("Common elements in foo and bar:")
print(common_elements)

print("Elements of baz greater than or equal to 14 but not equal to 15:")
print(baz_condition1)

print("Division condition (baz / foo > 4 OR <= 2):")
print(division_condition)

