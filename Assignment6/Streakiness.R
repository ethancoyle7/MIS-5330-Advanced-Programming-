# Step 1 - Construct a function `switches()`
# Function to compute the number of switches in a binary vector y
switches <- function(y) {
  num_switches <- sum(abs(diff(y)))
  return(num_switches)
}

# Test this function by finding the number of switches in Chase Utley's game hitting sequence for the 2006 season.
# You should replace 'utley_sequence' with the actual binary sequence.
# utley_sequence <- c(0, 1, 0, 0, 0, 1, 0, 0, 1)  # Example binary sequence for Step 1
# num_switches_utley <- switches(utley_sequence)
# Print the number of switches for Utley's sequence (Step 1)
# num_switches_utley

# Step 2 - Construct a function to compute the number of switches for a random permutation of the binary vector
# Function to compute the number of switches for a random permutation of the 1's and 0's in y
random_switches <- function(y) {
  y_permuted <- sample(y)  # Random permutation of y
  num_switches_permuted <- switches(y_permuted)
  return(num_switches_permuted)
}

# Step 3 - Use `replicate()` to repeat the random permutation and construct a histogram
# Step 3 - Use replicate() to repeat the random permutation for 10,000 simulations
num_simulations <- 10000
random_switches_simulations <- replicate(num_simulations, random_switches(utley_sequence))

# Create a histogram of the number of switches for these 10,000 random sequences
hist(random_switches_simulations, main="Number of Switches in Random Sequences", xlab="Number of Switches")
