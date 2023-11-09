# Function to simulate the purchase of 100 quarters and record the number of unique quarters
simulate_quarter_purchase <- function() {
  states <- 1:50  # Represents the 50 states
  purchased_quarters <- sample(states, 100, replace = TRUE)  # Simulate the purchase of 100 quarters
  unique_quarters <- length(unique(purchased_quarters))  # Count the number of unique quarters
  return(unique_quarters)
}

# Step 1 - Simulate the purchase of 100 quarters and record the number of unique quarters
unique_quarters_1 <- simulate_quarter_purchase()
# Print the number of unique quarters
# unique_quarters_1

# Step 2 - Using replicate() to repeat the process for 1000 purchases
num_simulations <- 1000
unique_quarters_simulations <- replicate(num_simulations, simulate_quarter_purchase())

# Step 3 - Estimate the probability of obtaining at least 45 unique quarters
probability_at_least_45 <- mean(unique_quarters_simulations >= 45)
# Print the probability
# probability_at_least_45

# Step 4 - Find the expected number of unique quarters
expected_unique_quarters <- mean(unique_quarters_simulations)
# Print the expected number of unique quarters
# expected_unique_quarters

# Function to compute the total (random) cost of completing the quarter set
compute_cost_of_completion <- function() {
  cost_per_quarter <- 2  # Cost per quarter
  quarters_needed <- 50  # Number of unique quarters needed to complete the set
  purchased_quarters <- numeric(50)  # Initialize a vector to keep track of purchased quarters
  cost <- 0  # Initialize the total cost
  while (length(unique(purchased_quarters)) < quarters_needed) {
    new_quarter <- sample(states, 1)  # Simulate the purchase of a single quarter
    purchased_quarters <- c(purchased_quarters, new_quarter)
    cost <- cost + cost_per_quarter
  }
  return(cost)
}

# Step 4 - Repeat the quarter-purchasing process 1000 times and compute the expected cost
expected_cost_simulations <- replicate(num_simulations, compute_cost_of_completion())

# Calculate the expected cost of completing the set
expected_cost <- mean(expected_cost_simulations)
# Print the expected cost
# expected_cost
