# This R script estimates how many dice rolls (turns) it takes on average
# to reach exactly the final space (10) from the start, using a fair 6-sided die.

set.seed(42)  # for reproducibility

# Function to simulate one full game until player reaches exactly space 10
simulate_game <- function(target = 10) {
  position <- 0
  turns <- 0
  
  while (position != target) {
    roll <- sample(1:6, 1)  # roll a fair 6-sided die
    # Only move if it doesn't overshoot the target
    if (position + roll <= target) {
      position <- position + roll
    }
    turns <- turns + 1
  }
  
  return(turns)
}

# Run the simulation many times to get a reliable estimate
n_simulations <- 100000
results <- replicate(n_simulations, simulate_game())

# Calculate and print the expected number of turns
expected_turns <- mean(results)
print(expected_turns)
