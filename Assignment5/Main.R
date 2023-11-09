################################################################################
# Step 1 - Modify the Function "scramble.hats"                                #
#                                                                              #
# Suppose that men in the old days wore only two types of hats, black and grey, #
# and that hats of a particular type are indistinguishable. Assume 20 men with  #
# hats visit the restaurant and half of the men are wearing each type of hat.   #
# The hats are randomly mixed, and we are interested in the number of men who   #
# leave the restaurant with the correct hat.                                    #
# Modify the function scramble.hats() to compute the number of correct matches  #
# in this setting. (The only change is the definition of the vector hats; if    #
# one represents a black hat and a grey hat using a 1 and 2, respectively, then  #
# hats consist of ten 1’s and ten 2’s.                                          #
################################################################################

# Function to simulate the scramble hats experiment
scramble.hats <- function() {
  hats <- c(rep(1, 10), rep(2, 10))  # 1 represents black hat, 2 represents grey hat
  shuffled_hats <- sample(hats)    # Shuffle the hats randomly
  correct_matches <- sum(shuffled_hats == hats)  # Count the correct matches
  return(correct_matches)
}
correct_matches <-shuffled.hats
correct_matches # displays the number of correct matchers
################################################################################
# Step 2 - Using replicate() to Simulate the Experiment                         #
#                                                                              #
# Using the function replicate(), repeat this simulation for 1000 trials. Store #
# the number of matches for the 1000 experiments in the vector matches.         #
################################################################################

# Simulate the experiment 1000 times
num_simulations <- 1000
matches <- replicate(num_simulations, scramble.hats())
matches # print out the result
################################################################################
# Step 3 - Analyzing Results and Plotting Histogram                            #
#                                                                              #
# From the simulated values, approximate the probability that 10 or more men    #
# receive the correct hats. Also, find the expected number of correct matches.  #
# Then, plot a histogram of the non-parametric distribution of correct matches. #
################################################################################

# Calculate the probability of 10 or more men receiving correct hats
probability_10_or_more_matches <- mean(matches >= 10)
# Calculate the expected number of correct matches
expected_matches <- mean(matches)
# Print the results
cat("Probability of 10 or more men receiving correct hats:", probability_10_or_more_matches, "\n")
cat("Expected number of correct matches:", expected_matches, "\n")
# Plot a histogram of the distribution of correct matches
hist(matches, main="Distribution of Correct Matches", xlab="Number of Correct Matches")
