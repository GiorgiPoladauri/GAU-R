#Amocana Pirveli Simulaciebze
#Problem 123 (Translated):
# A coin is made in such a way that the probability of getting heads is twice the probability of getting tails.
#
# What is the probability that in 3 tosses of the coin, tails appears exactly 2 times?
#  
#   ✅ Answer: 2/9


#set.seed(123)      # Set a random seed so the result is reproducible (same every run)
sims <- 10000     # Total number of simulated experiments
count <- 0         # Counter to store how many times we get exactly 2 tails

# Run the simulation 'sims' times
for (i in 1:sims) {
  # Simulate 3 coin tosses using biased probabilities:
  # "T" (tails) has probability 1/3, "H" (heads) has probability 2/3
  tosses <- sample(c("T", "H"), size = 3, replace = TRUE, prob = c(1/3, 2/3))
  
  # Count how many tails ("T") were observed in these 3 tosses
  tails_count <- sum(tosses == "T")
  
  # If exactly 2 tails occurred, add 1 to the count
  if (tails_count == 2) {
    count <- count + 1
  }
}

# Calculate the estimated probability:
# It's the number of successful cases (with 2 tails) divided by total simulations
estimated_prob <- count / sims

# Print the estimated probability
estimated_prob
2/9