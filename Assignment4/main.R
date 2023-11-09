################################################################################
####                  Student   : Ethan Coyle                               ####
####                  Instructor: Dr. Hubona                                ####
####                  Course    : MIS 5330 780 FL23 - Advanced Programming  ####
####                  Assignment: Vector Maker                              ####
####                  Date      : 11/25/23                                  ####
####                                                                        ####
#### Note: Below are 3 exercises specified for Assignment 4 The guidelines  ####
####       are blocked off and the answere I provide are encapsulated in    ####
####       each section respectively                                        ####
################################################################################


################################################################################
# Exercise 1                                                                   #
#                                                                              #
#    Create a user-defined function "vector.maker.num" that generates          #
#    a vector of numbers. Do not use the R-native function vector() inside     #
#    any of these user-defined functions!vector.maker.num() should have no     #
#    formal arguments. Each time it is called, and it should return a vector   #
#    of exactly 5 different random numbers from within the range of 1 to 100.  #
#    Then test outvSeveral times                                               #
################################################################################
# we first generate a function called vector maker num that take 
# no parameters but is responsible for generating 5 randon different
# numbers between 1 and 100 and the return of this function will be
# the unique numbers that were generated
vector.maker.num <- function() {
  unique_numbers <- sample(1:100, 5) # 5 random nums from 1-100
  return(unique_numbers) # pass back the numbers
}
# As specified by the instructions we test this out several times
# I am creting 5 renditions of this to test out and once they are 
# created, I will be printing them out consecutively the process
# flow of this is is calls the method passing in no parameters and 
# the return values ( the 5 random numbers are passed back and 
# assigned to the testscenerio{} value 
testscenerio1 <- vector.maker.num()
testscenerio2 <- vector.maker.num()
testscenerio3 <- vector.maker.num()
testscenerio4 <- vector.maker.num()
testscenerio5 <- vector.maker.num()
# These are all done now so we will print out each one consecutively
# Print the results for test scenerio 1
testscenerio1 
# Print the results for test scenerio 2
testscenerio2
# Print the results for test scenerio 3
testscenerio3
# Print the results for test scenerio 4
testscenerio4
# Print the results for test scenerio 5
testscenerio5
################################################################################

################################################################################
# Exercise 2                                                                   #
#                                                                              #
#    Create a user-defined function "vector.maker.alph" that generates a vector#
#    of characters. vector.maker.alph() should have no formal arguments. When  #
#    it is called, it should return a vector of exactly 5 different random     #
#    lettersvfrom the 26 lower case letters of the alphabet. Here is a helpful #
#    tip: the native R object 'letters' returns the 26 lower-case letters of   #
#    the alphabet as character elements. Then try it out several times         #
#                                                                              #
################################################################################

# creating a function named vector maker alpha that has no parateters 
vector.maker.alph <- function() {
  # Generate 5 different random letters from the alphabet
  
  alphabet <- letters # take the values of all the lower case letters and 
                      # assign to alphabet the sample is generated from the
                      # alphabet extracting 5 random numbers which is assigned
                      # to the unique letters 
  unique_letters <- sample(alphabet, 5) 
  return(unique_letters) # return back to the calling function passing back
                         # the 5 letters
} # end of the function method

#  As specified, try this out multiple times(sticking with 5) this calls 
# the function a total of 5 times
randomletters1 <- vector.maker.alph()
randomletters2 <- vector.maker.alph()
randomletters3<- vector.maker.alph()
randomletters4 <- vector.maker.alph()
randomletters5 <- vector.maker.alph()
# Once this is done, to see the values of these display on the screen 
# consecutively display 1st test
randomletters1
# display 2nd test
randomletters2
# display 3rd test
randomletters3
# display 4tth test
randomletters4
# display the last test
randomletters5
################################################################################

################################################################################
# Exercise 3                                                                   #
#                                                                              #
#    Create a user-defined function "vector.maker.bool" that outputs a vector  #
#    of logical values (TRUE's and FALSE's).vector.maker.bool() should have no #
#    formal arguments. When it is called, it should return a vector of exactly #
#    5 different random values (mixed) containing both TRUE's AND FALSE's.     #
#    Test this out  multiple times                                             #
#                                                                              #
################################################################################

# crete function method that generates 5 rnadom values of either true or false
# and returns the 5 generated values back to the calling functon in the testing
vector.maker.bool <- function() {
  unique_bool <- sample(c(TRUE, FALSE), 5, replace = TRUE) #gen. values error
                                                          # occured when not  
                                                          # including replace=
                                                          # TRUE
  return(unique_bool) # return the values
}

# Testing this out several times for the results will call the function 5 times
first_attempt <- vector.maker.bool()
second_attempt <- vector.maker.bool()
third_attempt <- vector.maker.bool()
fourth_attempt <- vector.maker.bool()
fifth_attempt <- vector.maker.bool()
# display he returned results
first_attempt
second_attempt
third_attempt
fourth_attempt
fifth_attempt
################################################################################
