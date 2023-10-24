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

a <- matrix(seq(26, 74, by = 2), nrow = 5, ncol = 5)
cat("Exercise 2 - 2D array 'a' with a sequence of even integers greater
    than 25 is shown below:\n")
print(a)
s <- LETTERS[3:22]
cat("The vectors that contain 20 capital letters starting with c
    is shown below:\n")
print(s)



#####################################################
#    Exercise 3                                    ##
# Create a list named 'l' and put all previously   ##
# created objects from the above exercises in it.  ##
# Name the resulting list components a, b and c    ##
# respectively. How many elements are there in     ##
# the list? Show the structure of the list.        ##
# Count all elements in the list recursively.      ##
#####################################################

l <- list(a = a, b = s, c = v) # creating list called l
list_length <- length(unlist(l))
cat("Exercise 3 - How many elements are there in the list 'l'? 
    ", list_length, "\n")
cat("The structure of the list is shown below:\n")
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
cat("When counting all the elements in the list 'l' recursively we get a
    count of : ", list_element_count, "\n")



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
result_exercise_4_1 <- l[[3]]
cat("Exercise 4 - Answer to question 1: The result of l[[3]] is a vector.\n")
print(result_exercise_4_1)

# 2. How would you access the 'random-th' letter in the list element 'c'?
random <- 5  # Replace with the desired index
random_letter <- l$c[random]
cat("Answer to question 2: To access the 'random-th' letter in the list 
    element 'c', use l$c[random].\n")
print(l$c[random])

# 3. If you convert list 'l' to a vector, what will be the type of the
# elements?
l_as_vector <- unlist(l)
vector_class <- class(l_as_vector)
cat("Answer to question 3: If you convert list 'l' to a vector, the elements
    will be of the same type. The class of the vector is :
    ", vector_class, "\n")

# 4. Can this list be converted to an array? What will be the data type
#of the elements in the resulting array?
l_as_array <- as.array(l)
array_class <- class(l_as_array)
cat("Answer to question 4: This list CAN be converted to an array 
    and the data type of the elements in the resulting array will
    depend on the data types of the elements in the list. The class
    of the array is: ", array_class, "\n")



################################################
#    Exercise 5                               ## 
#  1. Remove letters from the list 'l'.       ##
#  2. Convert the list 'l' to a vector and    ##
#     check its class.                        ## 
#  3. Compare it with the result from         ##
#     exercise 4, question #3.                ##
################################################

# 1. Remove letters from the list 'l'.
l_after_removing_letters <- l[-2]
# Print the list 'l' before and after removing letters
cat("Exercise 5 - Before removing letters from the list 'l':\n")
print(l)
cat("Exercise 5 - After removing letters from the list 'l':\n")
print(l_after_removing_letters)

# 2. Convert the list 'l' to a vector and check its classa.
l_as_vector <- unlist(l)
vector_class <- class(l_as_vector)
cat("Answer to question 2: The class of the vector after converting list 'l'
    to a vector is: ", vector_class, "\n")

# 3. Compare it with the result from exercise 4, question #3.
cat("Answer to question 3: Comparison with the result from exercise 4,
    question #3:\n")
print(l_as_vector)



#####################################################
#    Exercise 6                                    ##
# Find the difference between elements in          ##
# l[["a"]] and l[["b"]]. Find the intersection     ##
# between them. Is there number 33 in their union? ##  
#####################################################

ab_difference <- setdiff(l$a, l$b)
ab_intersect <- intersect(l$a, l$b)
is_33_in_union <- 33 %in% union(l$a, l$b)
cat("Exercise 6 - Answer to question 1: Difference between elements in 
    l[['a']] and l[['b']] is shown below:\n")
print(ab_difference)
cat("Answer to question 2: Intersection between elements in l[['a']] 
    and l[['b']] is shown below:\n")
print(ab_intersect)
cat("Answer to question 3: Is the number 33 in the union of elements from 
    l[['a']] and l[['b']]? ", is_33_in_union, "\n")



#####################################################
#    Exercise 7                                    ##
# Create 5×5 matrix named 'm' and fill it with     ##
# random numeric values rounded to two decimal     ##
# places, ranging from 1.00 to 100.00.             ##
#####################################################

m <- matrix(round(runif(25, min = 1, max = 100), 2), nrow = 5)
cat("Exercise 7 - the 5x5 Matrix 'm' with random numeric values rounded to two 
    decimal places is shown below:\n")
print(m)


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
cat("Exercise 8 - Answer to the question:\n")
cat("1. If we convert matrix 'm' to a vector, the class of the resulting 
    data structure is: ", vector_class, "\n")
cat("2. If we convert matrix 'm' to a list, the class of the resulting data
    structure is: ", list_class, "\n")
cat("3. If we convert matrix 'm' to a data frame, the class of the resulting
    data structure is: ", data_frame_class, "\n")
cat("4. If we convert matrix 'm' to an array, the class of the resulting 
    data structure is: ", array_class, "\n")



#######################################################
#    Exercise 9                                      ##
# Transpose array l$b and then convert it to matrix. ##
#######################################################
transposed_b <- t(l$b) # transpose
matrix_b <- as.matrix(transposed_b) # convert to matrix
cat("Exercise 9 - Matrix 'matrix_b' after transposing array l[['b']]:\n")
print(matrix_b)


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
cat("Union of matrix 'm' and elements in list 'l' (as character) 
    sorted in ascending order is shown below: \n")
print(union_sorted)
