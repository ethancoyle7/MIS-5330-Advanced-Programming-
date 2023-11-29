################################################################################
####                  Student   : Ethan Coyle                               ####
####                  Instructor: Dr. Hubona                                ####
####                  Course    : MIS 5330 780 FL23 - Advanced Programming  ####
####                  Assignment: Module 5: Assignment 5                    ####
####                                        CHECKING HATS EXERCISE          ####
####                  Date      : 12/02/23                                  ####
####                                                                        ####
################################################################################



################################################################################
# Outline for assignment                                                       #
#                                                                              #
# Suppose that men in the old days wore only two types of hats, black and grey,#
# and that hats of a particular type are indistinguishable. Assume 20 men with #
# hats visit the restaurant and half of the men are wearing each type of hat.  #
# The hats are randomly mixed, and we are interested in the number of men who  #
# leave the restaurant with the correct hat.                                   #
################################################################################


################################################################################
# Question 1                                                                   #  
# Modify the function scramble.hats() to compute the number of correct matches #
# in this setting. (The only change is the definition of the vector hats; if   #
# one represents a black hat and a grey hat using a 1 and 2, respectively, then#
# hats consist of ten 1’s and ten 2’s.                                         #
################################################################################

# Function to simulate the scramble hats experiment
scramble.hats <- function() { # 10 grey and black hats
  hats <- c(rep(1, 10), rep(2, 10))# 1 is the  black hat, 2 is the grey hat
  shuffled_hats <- sample(hats)# next we shuffle this randomly and get a sample
  correct_matches <- sum(shuffled_hats == hats)# then count the sum of correct
                                               # matches and return it from the
                                               # function
  return(correct_matches)
}
correct_matches <-scramble.hats() # call the function and assign to value
correct_matches # displays the number of correct matchers which is rnadom
################################################################################
# Question 2                                                                   #
#                                                                              #
# Using the function replicate(), repeat this simulation for 1000 trials. Store#
# the number of matches for the 1000 experiments in the vector matches.        #
################################################################################

num_simulations <- 1000 # Simulate the experiment 1000 times
matches <- replicate(num_simulations, scramble.hats()) # use replicate
matches # print out the result
################################################################################
# Question 3                                                                   #
#                                                                              #
# From the simulated values, approximate the probability that 10 or more men   #
# receive the correct hats. Also, find the expected number of correct matches. #
# Then, plot a histogram of the non-parametric distribution of correct matches.#
################################################################################

# we use mean to calculate the matches probability above or at 10
probability_10_or_more_matches <- mean(matches >= 10)
# print out probability
probability_10_or_more_matches # approximately 0.6 or so each time ran

# using mean we calc expected num of correct matches
expected_matches <- mean(matches)
# Print the results
expected_matches # approximately 10.03 etc during running tests

# make histograph 
# the title is :The Distribution Of Correct Matches
# x axis is Number of Correct Matches
# y axis is the frequency of those matchers
# the data inside is pertaining to matches
# Plot a histogram of the distribution of correct matches


hist(matches, main="The Distribution Of Correct Matches", 
     xlab="Number of Correct Matches")

################################################################################
