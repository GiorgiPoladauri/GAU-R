# Load mtcars dataset
data(mtcars)

# Create a new column 'category' based on qsec
mtcars$category <- cut(mtcars$qsec, breaks = c(14.5, 17, 21, 23), labels = c("A", "B", "C"), right = FALSE)

# 1. Calculate the difference in average horsepower between 4-cylinder and 8-cylinder cars
hp_avg_4cyl <- mean(mtcars$hp[mtcars$cyl == 4])
hp_avg_8cyl <- mean(mtcars$hp[mtcars$cyl == 8])
hp_diff <- hp_avg_8cyl - hp_avg_4cyl
hp_diff  # 126.5779

# 2. Filter data for category A and hp < 230, then calculate the average wt
category_A_hp_lt_230 <- mtcars[mtcars$category == "A" & mtcars$hp < 230, ]
avg_wt_A_hp_lt_230 <- mean(category_A_hp_lt_230$wt)
avg_wt_A_hp_lt_230  # 2.5126

# 3. Filter data for category A and disp > 240, then calculate the average hp
category_A_disp_gt_240 <- mtcars[mtcars$category == "A" & mtcars$disp > 240, ]
avg_hp_A_disp_gt_240 <- mean(category_A_disp_gt_240$hp)
avg_hp_A_disp_gt_240  # 247.8

# 4. Filter data for category B, disp > 140, gear > 4, then find the minimum mpg
category_B_disp_gt_140_gear_gt_4 <- mtcars[mtcars$category == "B" & mtcars$disp > 140 & mtcars$gear > 4, ]
min_mpg_B_disp_gt_140_gear_gt_4 <- min(category_B_disp_gt_140_gear_gt_4$mpg)
min_mpg_B_disp_gt_140_gear_gt_4  # 10.4

# 5. Calculate the percentage of cars with 3 gears in category A compared to total category A cars
category_A_3gears <- mtcars[mtcars$category == "A" & mtcars$gear == 3, ]
percentage_3gears_A <- (nrow(category_A_3gears) / nrow(mtcars[mtcars$category == "A", ])) * 100
percentage_3gears_A  # 33.33333
