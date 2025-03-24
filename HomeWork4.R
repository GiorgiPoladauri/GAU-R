#Page1



# Step a: Create and store the data frame
person <- c("Stan", "Francine", "Steve", "Roger", "Hayley", "Klaus")
sex <- factor(c("M", "F", "M", "M", "F", "M"), levels = c("F", "M"))
funny <- factor(c("High", "Med", "Low", "High", "Med", "Med"), levels = c("Low", "Med", "High"))
dframe <- data.frame(person, sex, funny)
dframe

# Step b: Add age column
age <- c(41, 41, 15, 1600, 21, 60)
dframe$age <- age
dframe

# Step c: Reorder columns: person, age, sex, funny
dframe <- dframe[, c("person", "age", "sex", "funny")]
dframe

# Step d: Create mydata2 by removing age.mon column
mydata <- dframe
mydata$age.mon <- c(492, 492, 180, 19200, 252, 720)  # dummy months
mydata2 <- subset(mydata, select = -age.mon)
mydata2

# Step e: Combine mydata2 with dframe to make mydataframe
mydataframe <- rbind(mydata2, dframe)
mydataframe

# Step f: Extract females with Med OR High funny level (names and ages only)
result <- mydataframe[mydataframe$sex == "F" & (mydataframe$funny == "Med" | mydataframe$funny == "High"), c("person", "age")]
result



#Page2


# Total number of individuals
n <- 20

# Step 1: Create sex vector
sex <- rep("M", n)  # default all to Male
female_indices <- c(1, 5, 6, 7, 12, 14, 15, 16)  # Female positions
sex[female_indices] <- "F"
sex

# Step 2: Create party vector
party <- rep("National", n)  # default all to National

# Labour: 1, 4, 12, 15, 16, 19
labour_indices <- c(1, 4, 12, 15, 16, 19)
party[labour_indices] <- "Labour"

# Greens: 6, 9, 11
greens_indices <- c(6, 9, 11)
party[greens_indices] <- "Greens"

# Maori: none (skip)

# Other: 10, 20
other_indices <- c(10, 20)
party[other_indices] <- "Other"

# Show vectors
sex
party