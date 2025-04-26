#N1
#Find the Smallest Number in a List of Numbers

numbers <- c(2, 5, 1, 4)

min_val <- numbers[1]
n <- length(numbers)

for (i in 2:n) {
  if (numbers[i] < min_val) {
    min_val <- numbers[i]
  }
}

print(min_val)

#N2
# A coin is made in such a way that the probability of getting heads is twice the probability of getting tails. What is the probability that in 3 tosses of the coin, tails appears exactly 2 times?

sims <- 10000     # Total number of simulated experiments
count <- 0         # Counter to store how many times we get exactly 2 tails

for (i in 1:sims) {

  tosses <- sample(c("T", "H"), size = 3, replace = TRUE, prob = c(1/3, 2/3))
 
  tails_count <- sum(tosses == "T")
 
  if (tails_count == 2) {
   
    count <- count + 1
  }
}

estimated_prob <- count / sims

print(estimated_prob)

2/9

#N3
#What is probability of getting sum = 5 when throwing two dice at the same time ?

SimulationNum <- 100000

Count_5 <- 0
Count_not_more_than_4 <- 0

for (i in 1:SimulationNum) {

  Die1 <- sample(1:6, 1, replace = TRUE)
  Die2 <- sample(1:6, 1, replace = TRUE)
 
  Total_score <- Die1 + Die2
 
  if (Total_score == 5) {
    Count_5 <- Count_5 + 1
  }
 
  if (Total_score <= 4) {
    Count_not_more_than_4 <- Count_not_more_than_4 + 1
  }
}

Probability_5 <- Count_5 / SimulationNum
Probability_not_more_than_4 <- Count_not_more_than_4 / SimulationNum

cat("a) Probability that the total score will be 5: ", Probability_5, "\n")
cat("b) Probability that the total score will be not more than 4: ", Probability_not_more_than_4, "\n")
