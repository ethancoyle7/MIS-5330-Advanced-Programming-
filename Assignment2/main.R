################################################################################
####                  Student   : Ethan Coyle                               ####
####                  Instructor: Dr. Hubona                                ####
####                  Course    : MIS 5330 780 FL23 - Advanced Programming  ####
####                  Assignment: Subsetting R Data Structure Objects       ####
####                  Date      : 11/11/23                                  ####
####                                                                        ####
#### Note: Below are the 20 exercises specified for this assignment         ####
#### my comments are using the #  and the questions are separated by        ####
#### and entire line of # to make it easier to sift through. Also           ####
#### any R code that I have implemented falls under the notation MY ANSWER  ####
#### or MY R CODE IS BELOW etc.                                             ####
################################################################################


##############
# Question 1 #
##############

# Consider a vector:
vec1 <- c(4,6,5,7,10,9,4,15)
# What is the value of:
vec1 < 7
# MY ANSWSER:

# When outputting this is prints out 
# [1]  TRUE  TRUE  TRUE FALSE FALSE FALSE 
# The reson behind this is because it is looking for boolean equality less than
# 7 so : 4<7 True, 6<7 True, 5<7 True 7<7 False, 10<7 False, 9<7 False,4<7 True,
# 15< 7 False hence the output TRUE  TRUE  TRUE FALSE FALSE FALSE  TRUE FALSE

# Part 2 of this answer is: By indexing, create a new vector "vec1a" that only
# contains the elements of vec1 that are less than 7
vec1a <- vec1[vec1 < 7]
vec1a
# This prints out : [1] 4 6 5 4
################################################################################

###############
# Question 2. #
###############

# Consider two vectors:
p <- c(3, 5, 6, 8)
# and
q <- c(6, 2, 4)
# What is the value of:
p+q
# Why? Be explicit in your answer.
# MY ANSWER:
#  THE output shows :[1]  9  7 10 14
#  This is because R is recycling the last element of the p(8)
#  The first element of p(3) is added to
#     the 1st element of q(6) resulting in 3+6=9
#  The second element p(5) is added 2nd element of the  q(2) 
#    resulting in 5+2=7
#  The 3rd elemenet of p(6) is added to the 3rd element o fthe q(4)
#    which results in 6+4 =10
#  Finally the fourth element of p(8) is added to the 1st 
#    element of q(6) a second time because q is recycled with R
#    due to the size mismatch and results in 8+6=14
#  This gives off the warning message : In p + q : longer object length is not
#  a multiple of shorter object length
################################################################################

###############
# Question 3  #
###############
# Consider the two vectors:
p <- c(3, 5)
# and
q <- c(6, 2, 4, 3)
# What is the value of:
p*q

# MY ANSWER : The result of this is [1] 18 10 12 15
#    This is because whne p is multipled by q corresponding
#    elements are multiplied together. However, when a shorter vector like this 
#    p is mutlipled by q, R recycles and repeats the shorter
#    vector o match the length of the longer one. Below I am outlining the 
#    process.
#
#    1st element of p(3) is multiplid by 1st element of q(6) = 18
#    2nd element of p(5) is multipled by 2nd element of q(2) = 10
#    Since q is longer, the 3rd element of p(3) is multiplied again by the 3rd 
#      element of q(4) which = 12
#    The fourth element of p(5) is then mutliplied by q(3) =15
#    This keeps in line with the output : [1] 18 10 12 15
################################################################################

##############
# Question 4 #
##############

# Consider this R code to create a data frame:
Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")
df4 <- data.frame(Age, Name, Gender)
df4
#   Age   Name Gender
# 1  22  James      M
# 2  25 Mathew      M
# 3  18 Olivia      F
# 4  20 Stella      F

# Write one line of R code that produces
# this output (without the comment marks):

##   Age   Name Gender
## 1  22  James      M
## 2  25 Mathew      M

# MY ANSWER:
df4[1:2, ]
################################################################################

##############
# Question 5 #
##############
# If
z <- 0:9
z
# Then what is the output from these statements?
digits <- as.character(z)
digits
# MY ANSWER:

# This prints out the result [1] "0" "1" "2" "3" "4" "5" "6" "7" "8" "9"
# This is because it first creates a vector z which is all numeric 0-9
# This then prints out the z vector and then it converts the vector to character
# vector called digits and then  prints it out resulting in a vector of 
# characters with quotes around them hence the result is "0" "1" "2" "3" "4" 
#                                                        "5" "6" "7" "8" "9"
as.integer(digits)
# MY ANSWER:
#
#  This takes the characterized vector digits that contain the characters and 
#  convert them to integers and then prints out the result removing the qutes 
#  which result in the output [1] 0 1 2 3 4 5 6 7 8 9
################################################################################

##############
# Question 6 #
##############

# Consider the vector:
x <- c(1,2,3,4)
# What is the value of k for:
(x+2)[(!is.na(x)) & x > 0] -> k

# Why
# MY ANSWER:
#
k
# The result is shown below by printing out k which is [1] 3 4 5 6
# This is the case because  the espression (x+2)[(!is.na(x)) & x > 0]
# first adds 2 to each element inside of the x vector and then it filters out
# thos elements that are not NA values and then the logical and operator must 
# also be true for the elemenets of x that are greater than 0 which
# result in the new vector k whose values are 3,4,5,6
# in this scenerio, 
# 1+2=3 that is not NA and greater than 0 =3
# 2+2=4 that is not NA and greater than 0 =4
# 3+2=5 that is not NA and greater than 0 =5
# 4+2=6 that is not NA and greater than 0=6
# So the result will be [1] 3 4 5 6
################################################################################

##############
# Question 7 #
##############

# If
x <- c(2, 4, 6, 8)
# and
y <- c(TRUE, TRUE, FALSE, TRUE)
# Then what is the value of this expression?
sum(x[y])
# Why?
# MY ANSWER:
#
#  The result is : [1] 14
#  This is because the sum only includes the elements of the vector x where the
#  respective elements in y are "TRUE" in the case of this, the elements of TRUE 
#  in the Y are the 1st,2nd, and 4th values respectively in x the values are
#  2,4,8 summing these up together they equal 14

##############
# Question 8 #
##############

# Consider the vector:
x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)
x
# Write a single line of R code
# that will output the number of NA's in the vector.

# MY ANSWER: to output the number of NAS in the vector we can utilize the is.na
# function to sum these up Shown below which result in 3 NA's
sum(is.na(x))
################################################################################

##############
# Question 9 #
##############

# If 
X <- c(NA, 3, 14, NA, 33, 17, NA, 41)
x
new_vector <- X[!is.na(X)]
new_vector
# Write one line of R code that will remove all
# occurrences of NA in X.

# MY ANSWER : to remove all of the occurances of NA from this we could use 
#             X[!is.na(X)] and assign it to a new vector with the NAs removed
#             evaluating to :X[!is.na(X)] the result is [1]  3 14 33 17 41
#             also shown below
new_vector <- X[!is.na(X)]
new_vector
################################################################################

###############
# Question 10 #
###############

# If 
Y <- c(1, 3, 12, NA, 33, 7, NA, 21)
Y
# Write one line of R code that will replace
# all occurrences of NA in Y with 11.

# MY ANSWER : to replace all of the NA occurances with 11 in Y we can use the 
#             below method: Y[is.na(Y)] <- 11 which equates to if the value in
#             y is a NA then replace it with an 11 for each occurance
#             Which results in [1]  1  3 12 11 33  7 11 21. Shown below
Y[is.na(Y)] <- 11
Y
################################################################################

###############
# Question 11 #
###############

# Consider two matrices: M,N where
M <- matrix(c(1:9),3,3,byrow=T)
M
N <- matrix(c(1:9),3,3)
N
# What is the value of:
M*N
# Why? Be explicit.
# MY ANSWER:
#
#           The value of M*N is      [,1] [,2] [,3]
#                               [1,]    1    8   21
#                               [2,]    8   25   48
#                               [3,]   21   48   81
#           This is because each element of the resulting matrix is multiplying
#           the corresponding elements in M and N outlined below
#           element 1,1 is 1 from M and 1 from N result in the 1
#           element 1,2 is 2 from M and 4 from N result in the 8
#           element 1,3 is 3 from M and 7 from N result in the 21 
#           going on to the second row we do the same thing and get 8,25,48
#           then for the third row we multiply each corresponding value for
#           M and N and get 21,48,81 staying true with our output

# What is the value of:N/M # NOTE: matrix N is numerator
N/M
# My ANSWER:  The result is :           
#          [,1] [,2]     [,3]
#[1,] 1.0000000 2.00 2.333333
#[2,] 0.5000000 1.00 1.333333
#[3,] 0.4285714 0.75 1.000000
# This is the case because we are dividing each respective collum and row value
# from N by the value in the same collum and value in M. Since this is division 
# and not all of these values divide evenly we will be getting floating point
# values for these which is automatically assigned when doing this equation
# since we havent explicitly stated to truncate or round the values.
################################################################################

###############
# Question 12 #
###############
# Create the following data frame. NOTE: 
#    the people names are NOT the first 
#    column, they are the rownames. You
#    might want to call up help for data.frame()

#          Age  Height  Weight   Sex
# Alex      17      65     170     M
# Lilly     25      60     135     F
# Mark      29      72     185     M
# Oliver    18      66     175     M
# Martha    31      64     145     F
# Ken       42      73     195     M
# Mary      22      60     125     F
# MY ANSWER:
data <- data.frame(
  Age = c(17, 25, 29, 18, 31, 42, 22),
  Height = c(65, 60, 72, 66, 64, 73, 60),
  Weight = c(170, 135, 185, 175, 145, 195, 125),
  Sex = c("M", "F", "M", "M", "F", "M", "F"),
  row.names = c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Ken", "Mary")
)
data
# Then write some R code that will change
# all the Sex M's to F's and all the
# Sex F's to M's.

# MY ANSWER:
# use the $ symbol for collum name from data
# Swap "M" to "F" and "F" to "M" in the "Sex" column use an ifelse to determine
# if it is a M then change to F else the collum value is an F whih changes it to
# and M effectively swapping these values
data$Sex <- ifelse(data$Sex == "M", "F", "M")
# this will result in the below output
#         Age Height Weight Sex
#  Alex    17     65    170   F
#  Lilly   25     60    135   M
#  Mark    29     72    185   F
#  Oliver  18     66    175   F
#  Martha  31     64    145   M
#  Ken     42     73    195   F
#  Mary    22     60    125   M
# also outputted below
data
################################################################################

###############
# QUESTION 13 #
###############

# What class of data is the (built-in data set) 
state.center
# MY ANSWER:
#           This is not a dataframe it is a matrix and we need to vconvert it 
#           to a data fram shown below
#           first onvert state.center to a data frame
state.center_dataframe <- as.data.frame(state.center)
#           Then to view the daaframe we output below
state.center_dataframe
###############################################################################

###############
# QUESTION 14 #
###############
# Consider the following data frame constructed from 3 vectors
age <- c(35, 22, 33, 45, 17, 21, 26)
name <- c("Jeff", "John", "Jim", "Lou",
          "Mary", "Ellen", "Ted")
weight <- c(225, 180, 205, 210, 165, 145, 195)
people <- data.frame(age, name, weight)
people

# What is the value of 
is.factor(people$name)
# Why? name is a character vector. Be explicit.

# MY ANSWER:
#           The value of is.factor(people$name) is resulting in FALSE because 
#           the name in the collum inside of the dataframe people is a character
#           vector and not a factor.it is a character vector bcause the names
#           string listings of individuals and factors normally are used when
#           the values show categorical or more discrete values for the variable
#           that have limited possible value levels. The string names are not
#           categorical values thaat have values that are predetermined to help 
#           benefit them for being stored as a factor.
# Then write R code to order the entire
# data frame by age.
# first we order the people data frame by age in ascending order
people <- people[order(people$age), ]
# to view the results we print out the people showing the result
people
###############################################################################

###############
# QUESTION 15 #
###############
# Consider the following factor vector:
fac.x <- factor(LETTERS[1:5])
fac.x
# Try to add the letter "F" as the sixth
# element of fac.x:
fac.x[6] <- c("F")
fac.x
# What happened? Why?
# MY ANSWER:
#           the result of this showed a warning message for an invalid factor 
#           level because factors as designed to have levels that are predefined 
#           and it cannot be adding new level to the factor that is existing 
#           directly. We can however,we can use the levels() method to add a new
#           level without recreating the entire vector from the beginning whih 
#           is shown below in the R code.

# Write some R code so that you can
# add "F" as the sixth element WITHOUT
# recreating the factor vector from 
# the beginning.
levels(fac.x) <- c(levels(fac.x), "F")
# view he output
levels(fac.x)
# Print the result is :[1] "A" "B" "C" "D" "E" "F"
###############################################################################

###############
# QUESTION 16 #
###############

#Create a 4 (rows) x 5 (columns) matrix 
#    named mat16 consisting of the sequence 
#    of numbers from 21 to 40. Make sure that
#    the numbers populate the matrix by rows, 
#    and not by columns.

# MY R CODE
# Create a 4x5 matrix by rows
mat16 <- matrix(21:40, nrow = 4, byrow = TRUE)

# Change the row names to row1, row2, row3 and
# row4. Then change the column names to col1,
# col2, col3, col4 and col5.

# MY R CODE
# Changing the row names to row1,row2,row3,row4
rownames(mat16) <- c("row1", "row2", "row3", "row4")

# Changing the collum names to the specification col1,col2,col3,col4,col4,col5
colnames(mat16) <- c("col1", "col2", "col3", "col4", "col5")
# The below is printing out the result of the matrix
mat16
###############################################################################

###############
# Question 17 #
###############

# Change mat16 to a data frame named "df17"
# MY R CODE IS BELOW
# Change mat16 to a data frame named df17
df17 <- as.data.frame(mat16)
# To view it shown below
df17
#############################################
# Part 2. Create two more vectors:
col6 <- c(41:44)
col7 <- c(45:48)

# Join vectors col6 and col7 to data
# frame df17 that they comprise 
# columns 6 and 7 of df17

# MY R CODE IS SHOWN BELOW

# Add col6 and col7 as the 6th and 7th column of df17
df17$col6 <- col6
df17$col7 <- col7
# View the result after doing these to the  data frame
df17

################################################################################

###############
# QUESTION 18 #
###############

# Take df17 and convert it to a list with the name "list18".

# MY R CODE
# Convert df17 to a list named list18
list18 <- as.list(df17)

# Then add list18 as the eighth component of list18

# MY R CODE
# Add list18 as the eighth component of list18
list18[[8]] <- list18
# Then for posterity, we an View the resulting list below
list18
################################################################################

###############
# QUESTION 19 #
###############

# Consider the following matrix:
mat19 <- matrix(1:18, nrow = 3)
mat19
# Write a short R command that
# outputs the following (without
# the comment marks:

#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9
# [4,]   10   11   12
# [5,]   13   14   15
# [6,]   16   17   18

# MY ANSWER IN R CODE IS SHOWN BELOW

# we need to transpose this where it flips that using the t(mat19) transposes 
# that and makes it 3 collums 6 rows versus the old which was 6 x3 and then 
# that makes it match the desired output shown above 
t(mat19)

################################################################################

###############
# QUESTION 20 #
###############

# Create the following data frame:
name <- c("Harry", "Ron", "John", "Jerry", "Betty")
weight <- c(176, 175, 167, 230, 180)
gpa <- c(3.4, 2.8, 4.0, 2.2, 3.4)
df20 <- data.frame(name, weight, gpa)
df20

# Write a brief line of R code that
# Reassigns John's weight to be 195

# MY R CODE
# get the collum $ name and look for john and weight assign and overwrite the 
# value to 195, the original was 167 and then print out for viewing
df20[df20$name == "John", "weight"] <- 195
df20

# Part 2. Filter out the students in df20 who
# have a GPA higher than 3.0 and put
# them in a new data frame named "df20a"

# My R Code
# all those that have a gpa above the 3.0 in the gpa $ collum are filtered out
#  and saved to a data frame called df20a and then print to verify the changes
#  are correct
df20a <- df20[df20$gpa > 3.0, ]
df20a
################################################################################

