# Giorgi P.

df <- mtcars

# Davaleba 1
df$qsec_category <- cut(df$qsec, breaks = c(14.5, 17, 21, 22, 23), labels = c("A", "B", "C", "D"), include.lowest = TRUE)

cat("Categorizebuli qsec :\n")
print(df$qsec_category)

# Davaleba 2
mean_hp_4cyl <- mean(df$hp[df$cyl == 4])
mean_hp_8cyl <- mean(df$hp[df$cyl == 8])
hp_diff <- mean_hp_8cyl - mean_hp_4cyl
cat("Gansxvaveba 4 da 8 cilindrian avtomobils shoris:", hp_diff, "\n")

# Davaleba 3
subset_A_hp230 <- subset(df, qsec_category == "A" & hp < 230)
cat("Monacemebi A Categoriistvis sadac hp 230 naklebi:\n")
print(subset_A_hp230)

# Davaleba 4
subset_A_disp240 <- subset(df, qsec_category == "A" & disp > 240)
cat("Monacemebi A Categoriistvis sadac disp 240 ze meti:\n")
print(subset_A_disp240)

# Davaleba 5
subset_D_disp140_gear4 <- subset(df, qsec_category == "D" & disp > 140 & gear > 4)
cat("Monacmebi D categoriistvis sadac disp metia 140 ze da gear > 4:\n")
print(subset_D_disp140_gear4)
