#GiorgiPoladauriQuiz4RProgramming

getwd()  # Show the current working directory

survey <- read.csv("fl_student_survey.csv", header = TRUE, sep = ",", dec = ".")  # Load the CSV file

#---------------------------- Sakitxi1 ----------------------------
aff1 <- table(survey$political_affiliation)  # Count frequency of each political affiliation
aff1  # Display the frequency table

colors <- c("red", "yellow", "green")[match(names(aff1), c("d", "i", "r"))]  # Assign colors based on affiliation

barplot(aff1,                             # Draw bar plot of affiliations
        names.arg = names(aff1),         # Use affiliation labels as names
        col = colors,                    # Color each bar
        main = "Affiliation",            # Title of plot
        cex.main = 1.5,                  # Title size
        font.main = 2,                   # Bold title font
        xlab = "Affiliation",            # X-axis label
        ylab = "Number of Students")     # Y-axis label

#---------------------------- Sakitxi2 ----------------------------
aff2 <- table(survey$political_affiliation)  # Count frequency again (redundant, same as aff1)
aff2  # Show the table again

colors <- c("red", "yellow", "green")[match(names(aff2), c("d", "i", "r"))]  # Same color assignment

pie(aff2,                               # Draw pie chart of political affiliation
    labels = names(aff2),              # Use affiliation letters as labels
    col = colors,                      # Assign colors
    main = "Affiliation",              # Title
    cex.main = 1.5,                    # Title size
    font.main = 3)                     # Bold title

#---------------------------- Sakitxi3 ----------------------------
survey <- read.csv("fl_student_survey.csv", header = TRUE, sep = ",", dec = ".")  # Reload the CSV file

br <- seq(20, 75, by = 5)  # Define breakpoints for age groups (every 5 years)
lab <- paste0("[", br[-length(br)], ",", br[-1], ")")  # Create interval labels

ageC <- cut(survey$age, breaks = br, right = FALSE, labels = lab)  # Cut age into intervals

age_table <- table(ageC)  # Count number of students in each age group

data <- data.frame(Age = lab, freq = as.numeric(age_table))  # Create a data frame with frequencies
data  # Display the table

#---------------------------- Sakitxi4 ----------------------------
plot(survey$distance_home, survey$distance_residence,                 # Scatter plot: home vs residence distance
     main = "Distance",                                              # Title
     xlab = "distance_home",                                         # X-axis label
     ylab = "distance_residence",                                    # Y-axis label
     pch = 16,                                                       # Solid dots
     col = ifelse(survey$gender == "m", "blue", "red"),             # Color by gender: male = blue, female = red
     xlim = c(0, 8000),                                              # Limit X-axis
     ylim = c(0, 25))                                                # Limit Y-axis

legend("topleft", legend = c("Male", "Female"), pch = 16, col = c("blue", "red"))  # Add legend

#---------------------------- Sakitxi5 ----------------------------
data(mtcars)  # Load built-in mtcars dataset

plot(mtcars$wt, mtcars$mpg,                                            # Scatter plot: weight vs mpg
     main = "mtcars მონაცემები",                                       # Title in Georgian
     xlab = "wt",                                                     # X-axis: weight
     ylab = "mpg",                                                    # Y-axis: miles per gallon
     pch = 16,                                                        # Solid dots
     col = ifelse(mtcars$cyl == 4, "red",                             # Red if 4 cylinders
                  ifelse(mtcars$cyl == 6, "blue", "purple")),         # Blue if 6, purple if 8
     xlim = c(1, 6),                                                  # Limit X-axis
     ylim = c(5, 35))                                                 # Limit Y-axis

legend("topright", legend = c("cylinder=4", "cylinder=6", "cylinder=8"), pch = 16, col = c("red", "blue", "purple"))  # Add legend

#---------------------------- Sakitxi6 ----------------------------
age_gr <- cut(survey$age, breaks = c(20, 39, 75), include.lowest = TRUE, right = FALSE, labels = c("A", "B"))  # Group students by age: A = 20-38, B = 39-74

plot(survey$distance_home, survey$distance_residence,               # Scatter plot of distances again
     main = "studentebis monacemebi",                               # Title in Georgian
     xlab = "distance_home",                                        # X-axis label
     ylab = "distance_residence",                                   # Y-axis label
     pch = 16,                                                      # Solid dots
     col = ifelse(age_gr == "A", "red", "blue"),                    # Color by age group: A = red, B = blue
     xlim = c(0, 8000),                                             # Limit X-axis
     ylim = c(0, 25))                                               # Limit Y-axis

legend("topleft", legend = c("A", "B"), pch = 16, col = c("red", "blue"))  # Add legend for age groups
