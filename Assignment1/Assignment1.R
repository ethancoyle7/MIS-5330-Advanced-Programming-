#######################################
####   Student   : Ethan Coyle     ####
####   Instructor: Dr. Hubona      ####
####   Course    : MIS 5330 780    ####
####               FL23 - Advanced ####
####               Programming     ####
####   Assignment: Data Sturctures ####
####                   Exercises   ####
####   Date      : 10/23/2023      ####
#######################################



#############################################
#    Exercise 1                            ##
# Create a vector named 'v' which contains ##
# 10 random integer values between -100    ##
# and +100.                                ##    
#############################################

v <- sample(-100:100, 10)
cat("Exercise 1 - The output of the sample vector 'v' is shown below:\n")
print(v)



#############################################################
#    Exercise 2                                            ##
#                                                          ## 
# Create a two-dimensional 5×5 array named                 ##  
# 'a' comprised of sequence of even integers               ##
# greater than 25.                                         ##    
#                                                          ##
# Create a vector named 's' containing sequence            ##
# of 20 capital letters, starting with 'C'.                ##
#############################################################

a <- array(seq(from=26,length.out= 25, by = 2),c(5,5))
#"Exercise 2 - 2D array 'a' with a sequence of even integers greater
# than 25 is shown below
a # show the value of a 
s <- LETTERS[3:22]
# The vectors that contain 20 capital letters starting with c
# is shown below
s



#####################################################
#    Exercise 3                                    ##
# Create a list named 'l' and put all previously   ##
# created objects from the above exercises in it.  ##
# Name the resulting list components a, b and c    ##
# respectively. How many elements are there in     ##
# the list? Show the structure of the list.        ##
# Count all elements in the list recursively.      ##
#####################################################

l <- list(a = v, b = a, c = s) # creating list called l
list_length <- length(l)
# How many elements are there in the list 'l'? 
list_length
# The structure of the list is shown below
str(l)

# Count all elements in the list 'l' recursively
recursive_list_element_count <- function(x) {
  count <- 0
  for (item in x) {
    if (is.list(item)) {
      count <- count + recursive_list_element_count(item)
    } else {
      count <- count + length(item)
    }
  }
  return(count)
}
list_element_count <- recursive_list_element_count(l)
# When counting all the elements in the list 'l' recursively we get a
# count shown below
list_element_count



###################################################################
#    Exercise 4                                                  ##
# Without running commands in R, answer the following questions: ##
#                                                                ##    
#  1. What is the result of l[[3]] (from exercise 3)?            ##
#  2. How would you access the 'random-th'                       ##  
#     letter in the list element 'c'?                            ##    
#  3. If you convert list 'l' to a vector,                       ##
#     what will be the type of the elements?                     ##
#  4. Can this list be converted to an array?                    ##  
#     What will be the data type of the elements                 ##
#     in the resulting array?                                    ##
# Then check the results using R.                                ##
###################################################################

# 1. What is the result of l[[3]] (from exercise 3)?
l[[3]]
# Exercise 4 - Answer to question 1: The result of l[[3]] is a vector.

# 2. How would you access the 'random-th' letter in the list element 'c'?
l[[3]][sample(1:length(l[[3]]),1)]

# 3. If you convert list 'l' to a vector, what will be the type of the
# elements?
class(unlist(l)) # if we unlist L then we get character
# 4. Can this list be converted to an array? What will be the data type
#of the elements in the resulting array?
l_as_array <- as.array(l)
class(l_as_array[1]) # the result of resulting array will end up being a list




################################################
#    Exercise 5                               ## 
#  1. Remove letters from the list 'l'.       ##
#  2. Convert the list 'l' to a vector and    ##
#     check its class.                        ## 
#  3. Compare it with the result from         ##
#     exercise 4, question #3.                ##
################################################

# 1. Remove letters from the list 'l'.
l$c <- NULL
class(unlist(l))

# 2. Convert the list 'l' to a vector and check its classa.
l_as_vector <- unlist(l)
vector_class <- class(l_as_vector)
cat("Answer to question 2: The class of the vector after converting list 'l'
    to a vector is: ", vector_class, "\n")

# 3. Compare it with the result from exercise 4, question #3.
# Answer to question 3: Comparison with the result from exercise 4,
# question #3 the value of this is shown below
l_as_vector
# Compared to the value in exercise 4 which is shown below
class(x[1])


#####################################################
#    Exercise 6                                    ##
# Find the difference between elements in          ##
# l[["a"]] and l[["b"]]. Find the intersection     ##
# between them. Is there number 33 in their union? ##  
#####################################################

ab_difference <- setdiff(l$a, l$b)
ab_intersect <- intersect(l$a, l$b)
is_33_in_union <- 33 %in% union(l$a, l$b)
# Exercise 6 - Answer to question 1: Difference between elements in 
# l[['a']] and l[['b']] is shown below
ab_difference
# Answer to question 2: Intersection between elements in l[['a']] 
# and l[['b']] is shown below:\n")
ab_intersect
# Answer to question 3: Is the number 33 in the union of elements from 
# l[['a']] and l[['b']]?
is_33_in_union


#####################################################
#    Exercise 7                                    ##
# Create 5×5 matrix named 'm' and fill it with     ##
# random numeric values rounded to two decimal     ##
# places, ranging from 1.00 to 100.00.             ##
#####################################################

m <- matrix(round(runif(25, min = 1, max = 100), 2), nrow = 5)
# Exercise 7 - the 5x5 Matrix 'm' with random numeric values rounded to two 
# decimal places is shown below
m


####################################################
#    Exercise 8                                   ##
# Answer the following question without running   ##
# any R commands, then check the result.          ##
# What will be the class of the resulting data    ## 
# structure if you convert matrix 'm' from        ##
# exercise 7 to:                                  ##
#  1. a vector                                    ##
#  2. a list                                      ##
#  3. a data frame                                ##
#  4. an array ?                                  ##
####################################################

# 1. a vector
m_as_vector <- as.vector(m)
vector_class <- class(m_as_vector)
# 2. a list
m_as_list <- as.list(m)
list_class <- class(m_as_list)
# 3. a data frame
m_as_data_frame <- as.data.frame(m)
data_frame_class <- class(m_as_data_frame)
# 4. an array
m_as_array <- as.array(m)
array_class <- class(m_as_array)
# Exercise 8 - Answer to the questions are shown below
# If we convert matrix 'm' to a vector, the class of the resulting 
# data structure is
vector_class
# If we convert matrix 'm' to a list, the class of the resulting data
# structure is 
list_class
# If we convert matrix 'm' to a data frame, the class of the resulting
# data structure is
data_frame_class
# If we convert matrix 'm' to an array, the class of the resulting 
# data structure is
array_class



#######################################################
#    Exercise 9                                      ##
# Transpose array l$b and then convert it to matrix. ##
#######################################################

transposed_b <- t(l$b) # transpose
matrix_b <- as.matrix(transposed_b) # convert to matrix
# Exercise 9 - Matrix 'matrix_b' after transposing array l[['b']]
matrix_b


#####################################################
#    Exercise 10                                   ##
# Get the union of matrix 'm' and all elements in  ##
# list 'l' and sort it in ascending order.         ##
#####################################################
# Convert elements in matrix 'm' to character
matrix_m_to_character <- as.character(m)
# Convert elements in list 'l' to character
l_as_character <- sapply(l, as.character)
# Get the union of matrix 'm' and elements in list 'l' (as character)
union_sorted <- sort(union(as.character(m), unlist(l_as_character)))
# Print the result
# Union of matrix 'm' and elements in list 'l' (as character) 
# sorted in ascending order is shown below
union_sorted
# answer from the video shown below which shows the same
sort(union(as.vector(m),unlist(l)))
