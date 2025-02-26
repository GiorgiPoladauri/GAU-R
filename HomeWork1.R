seq1 <- seq(5, -11, by = -0.3)
seq1 <- rev(seq1)
vec_c <- rep(c(-1, 3, -5, 7, -9), each = 10, times = 2)
sort(vec_c, decreasing = TRUE)
vec_d <- c(6:12, rep(5.3, 3), -3, seq(102, length(vec_c), length.out = 9))
length(vec_d)
vec_num <- c(seq(3, 6, length.out = 5), rep(c(2, -5.1, -33), times = 2), 7, 42 + 2)
vec_first_last <- vec_num[c(1, length(vec_num))]
vec_mid <- vec_num[-c(1, length(vec_num))]
vec_reconstructed <- c(vec_first_last[1], vec_mid, vec_first_last[2])
vec_num <- sort(vec_num)
rev_vec_num <- vec_num[length(vec_num):1]
identical(rev_vec_num, sort(vec_num, decreasing = TRUE))
vec_selected <- c(rep(vec_mid[3], 3), rep(vec_mid[6], 4), vec_mid[length(vec_mid)])
vec_copy <- vec_num
vec_copy[c(1, 5:7, length(vec_copy))] <- c(99, 98, 97, 96, 95)
