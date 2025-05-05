#GiorgiPoladauriQuiz3

#set.seed(1)
simulation_count <- 10000

# Davaleba 1
# This task calculates the probability that the sum of two dice is at most 4.
die1 <- sample(1:6, simulation_count, replace = TRUE)  # Simulate rolls for the first die
die2 <- sample(1:6, simulation_count, replace = TRUE)  # Simulate rolls for the second die
sum_values <- die1 + die2  # Sum the results of the two dice rolls
probability_sum_at_most_4 <- mean(sum_values <= 4)  # Find the proportion of sums that are less than or equal to 4
print(probability_sum_at_most_4)

# Davaleba 2
# This task calculates the probability that all or none of the aces (1 to 4) are in the first half of a shuffled deck.
aces_in_one_half <- function() {
  deck <- sample(1:52)  # Shuffle a deck of cards (52 cards)
  first_half <- deck[1:26]  # Select the first half of the deck
  # Check if the aces (1 to 4) are all in the first half or not at all in the first half
  sum((1:4) %in% first_half) %in% c(0, 4)
}
# Run the simulation many times and calculate the probability of the condition being true
probability_all_aces_one_half <- mean(replicate(simulation_count, aces_in_one_half()))
print(probability_all_aces_one_half)

# Davaleba 3
# This task calculates the probability of getting exactly two tails when flipping a biased coin 3 times.
coin <- c("T", "H")  # Tails ("T") and Heads ("H") as the two possible outcomes
probability_two_tails <- mean(replicate(simulation_count, {
  tosses <- sample(coin, 3, replace = TRUE, prob = c(1/3, 2/3))  # Simulate 3 coin tosses with biased probabilities
  sum(tosses == "T") == 2  # Check if there are exactly two tails
}))
print(probability_two_tails)

# Davaleba 4
# This task calculates the probability of rolling at least three 1s when rolling four dice.
dice <- sample(1:6, 4 * simulation_count, replace = TRUE)  # Simulate rolls for four dice
dice_matrix <- matrix(dice, ncol = 4)  # Reshape the dice rolls into a matrix with 4 columns (representing 4 dice)
probability_at_least_three_ones <- mean(rowSums(dice_matrix == 1) >= 3)  # Check how many rows (simulations) have at least 3 ones
print(probability_at_least_three_ones)

# Davaleba 5
# This task calculates the probability of getting exactly two odd numbers (1, 3, or 5) when rolling four dice.
SimulationNum <- 100000  # Total number of simulations
Count_two_odd <- 0  # Counter to keep track of how many times exactly two odd numbers are rolled

for (i in 1:SimulationNum) {
  Dice <- sample(1:6, 4, replace = TRUE)  # Simulate rolling four dice
  Odd_numbers <- c(1, 3, 5)  # Define the odd numbers
  Odd_count <- sum(Dice %in% Odd_numbers)  # Count how many of the rolled dice are odd
  if (Odd_count == 2) {  # Check if there are exactly two odd numbers
    Count_two_odd <- Count_two_odd + 1  # Increment the counter
  }
}

Probability_two_odd <- Count_two_odd / SimulationNum  # Calculate the probability as the proportion of simulations where exactly 2 odd numbers were rolled
print(Probability_two_odd)
