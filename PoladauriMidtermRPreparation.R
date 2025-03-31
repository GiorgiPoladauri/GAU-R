data <- read.csv("data.csv", header = TRUE, sep = ",")

head(data)

Data <- mtcars
head(Data)
names(Data)

Breaks <- c(14, 17, 19, 20)
Labels <- c("Fast", "Medium", "Slow")

Data$SpeedCategory <- cut(Data$qsec, breaks = Breaks, labels = Labels, include.lowest = TRUE)
print(Data$SpeedCategory)

AverageHorsePower <- mean(Data$hp)

AverageHorsePowerFor4Cyl <- mean(Data$hp[Data$cyl == 4])
AverageHorsePowerFor4Cyl

HorsePowerDifference <- AverageHorsePower - AverageHorsePowerFor4Cyl
HorsePowerDifference

FastCategoryCarsWithLessThan230HP <- subset(Data, SpeedCategory == "Fast" & hp < 230)
FastCategoryCarsWithLessThan230HP

NewMatrix <- matrix(1:20, nrow = 4, ncol = 5)
NewMatrix

SubestNewMatrix <- NewMatrix[3:4, 1:4]
SubestNewMatrix
NewMatrix

NewMatrix[c(1,3), c(1,3)] <- c(101, 102, 103, 104)
NewMatrix

