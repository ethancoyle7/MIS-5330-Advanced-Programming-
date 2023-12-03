################################################################################
####                  Student   : Ethan Coyle                               ####
####                  Instructor: Dr. Hubona                                ####
####                  Course    : MIS 5330 780 FL23 - Advanced Programming  ####
####                  Assignment: Module 5: Assignment 5                    ####
####                                        COLLECTING QUARTTERS            ####
####                  Date      : 12/09/23                                  ####
####                                                                        ####
################################################################################
# Guidelines                                                                   #
#                                                                              #
# In 1999, the United States launched the 50 State Quarters program where each #
# of the 50 states was honored with a special quarter. Suppose you purchase    #
# 100 “state” quarters where each quarter is equally likely to feature one of  #
# the 50 states.                                                               #
################################################################################


################################################################################
# Question 1                                                                   #
#                                                                              #
# Write a function using the sample() function to simulate the purchase of 100 #
# quarters and record the number of unique quarters that are purchased.        #
################################################################################

# Function to simulate the purchase of 100 quarters and record unique quarters
simulated_purchase_of_100_quarters <- function() {
  states <- 1:50  # Represents the 50 states
  length(unique(sample(states, 100, replace = TRUE)))
}
# call the function and save the result the print it out
number_of_unique_quarters <- simulated_purchase_of_100_quarters()
# Print the number of unique quarters
number_of_unique_quarters # averaging about 42ish this changes multiple times


################################################################################
# Question 2                                                                   #
#                                                                              #
# Using the replicate() function, repeat this process for 1000 purchases.      #
# Construct a table of the number of unique quarters you obtain in these 1000  #
# simulations. Use this table to estimate the probability that you obtain at   #
# least 45 unique quarters                                                     #
################################################################################

# Simulate the purchase 1000 times and record the number of unique quarters
simulation_results_1000_purchases <- 
  replicate(1000, simulated_purchase_of_100_quarters())
simulation_results_1000_purchases # display the simulation results all 1000 
# Create a table of the results which returns back count of all unique nums like
# 35 questers ,38 quarters ,40 etc 
results_table <- table(simulation_results_1000_purchases)
results_table # displays how many unique times count has occurred 
# Estimate the probability of obtaining at least 45 unique quarters
probability_at_least_45 <- sum(results_table[names(results_table) >= 45]) /
  sum(results_table)
probability_at_least_45 # print out the probability of getting count >= 45 
# the probability is respresented by 0 to 1 and the close it is to 1 the higher
# the probability is this returns roughly a result above 0.3 


################################################################################
# Question 3                                                                   #   
# Use the output from 2) to find the expected number of unique quarters.       #
################################################################################

# Find the expected number of unique quarters
expected_number_of_unique_quarters <- sum(as.numeric(names(results_table)) *
                                  results_table) / sum(results_table)
expected_number_of_unique_quarters # display out the result of the expected 
# number quarters this roughty returns back 43.357


################################################################################
# Question 4                                                                   #
#                                                                              #
# Suppose you are able to complete your quarter set by purchasing state        #
# quarters from a coin shop for $2 for each quarter. Revise your function to   #
# compute the total (random) cost of completing the quarter set. Using the     #
# replicate() function,repeat the quarter-purchasing process 1000 times and    #
# compute the expected cost of completing your set.                            #
################################################################################

# Revised function to compute the total cost of completing the quarter set
compute_total_cost <- function() {
  states <- 1:50  # Represents the 50 states
  unique_quarters <- unique(sample(states, 100, replace = TRUE))
  remaining_quarters <- setdiff(states, unique_quarters) # use setdiff for the 
                                                         # diff in states to unique
                                                         # to get the remainder
  total_cost <- length(remaining_quarters) * 2 # multipluy remainder by 2 for 
                                              # the $2 per quarter
  return(total_cost) # return back the total cost to get all unique
}

# Simulate the quarter-purchasing process 1000 times and compute the expected cost
expected_costs <- replicate(1000, compute_total_cost()) # using replicate func.
expected_costs # print out the expected costs for the 1000 simulations

average_expected_cost <- mean(expected_costs)
average_expected_cost # print out the avg costs abou 12-14 after caculating the
# avergage cost out of the 1000 simulations

################################################################################
