################################################################################
####                  Student   : Ethan Coyle                               ####
####                  Instructor: Dr. Hubona                                ####
####                  Course    : MIS 5330 780 FL23 - Advanced Programming  ####
####                  Assignment: Module 3: Assignment 3 -- Reading and     ####
####                              writing R data files                      ####
####                  Date      : 11/28/23                                  ####
####                                                                        ####
################################################################################
# Note : This is assuming that the file is opened and ALL of the files that    #
#        were in the "therbook" folder is copied over to the temp folder. If   #
#        this is not done then the setwd needs to be changed to properly map   #
#        to the specified directory i.e. something like temp/therbook and then #
#        grab any specified files. For this, I extracted all the files and put #
#        into the c temp folder and have no problems                           #
################################################################################


# Set the working directory to the temp folder in the C drive
setwd("C:/temp")
# Check the current working directory to see that the change was made
getwd()
# List files in the current working directory (C:/temp)
files_in_temp <- list.files()
# Print the list of files
print(files_in_temp)
################################################################################

##############
# QUESTION 1 #
##############

# Part A.
## Use the read.csv() function to read in
## the file "dates.csv". In the same line,
## assign it to a new object 'dates'

# MY ANSWER IS BELOW:
dates <- read.csv("dates.csv")
dates # i want to view he data in there to make sure it is there

# Part B.
# Use an appropriate R function to tell you how many rows and columns
# are in the dates object

# MY ANSWER IS BELOW:
number_of_rows <- nrow(dates)
number_of_columns <- ncol(dates)
# Display the row and col numbers
# Number of rows in the dates.csv is shown below -> 16 rows
number_of_rows
# Number of columns in the dates is shown below -> 2 collums
number_of_columns

# Part C.
# Use an appropriate R function to tell you the complete structure of dates
# MY ANSWER IS BELOW:
# Structure of 'dates'
str(dates)

# Part D.
# What class of object is dates?
# MY ANSWER IS BELOW:
class_dates <- class(dates) # the class of this prints out to be a data.frame
# Class of object 'dates' is shown below
class_dates

################################################################################

##############
# QUESTION 2 #
##############

# Part A.
# Reading cancer.txt using read.table Assuming that the file is in the same 
# folder as your R script or notebook

#MY ANSWER IS BELOW
cancer <- read.table("cancer.txt", header = TRUE)
cancer # print it to the console for verification

# Part B.
# Use an appropriate R function to tell you how many rows and columns are in
# the cancer object

# MY ANSWER IS BELOW
number_rows_in_cancer <- nrow(cancer)
number_columns_in_cancer <- ncol(cancer)
# the number of rows in the cancer object are shown below -> 120 rows
number_rows_in_cancer 
# The number of collums in the cancer object are shown below -> 3 collums
number_columns_in_cancer

# Part C.
# Use an appropriate R function to tell you the complete structure of cancer

# MY ANSWER IS BELOW:
str(cancer)

# Part D. 
# What class of object is cancer?

# MY ANSWER IS BELOW:
class_cancer <- class(cancer)
# print out the class of object cancer below : this is a data.frame
class_cancer

################################################################################

##############
# QUESTION 3 #
##############

 # Part A.
## Use the read.csv() function (and no other function) to read in the file
# "competition.txt". In the same line, assign it to a new object 'comp'. Don't 
# forget about capturing the headers

# MY ANSWER:
# we first read "competition.txt" using read.csv
comp <- read.csv("competition.txt", header = TRUE)
# Display the 'comp' object to verify that it read in
comp

# Part B.
# Use an appropriate R function to tell you how many rows and columns are
# in the comp object

# MY ANSWER:
number_rows_in_comp <- nrow(comp)
number_columns_in_comp <- ncol(comp)
# the number of rows in the comp object are shown below -> 30 rows
number_rows_in_comp 
# The number of collums in the comp object are shown below -> 1 collum
number_columns_in_comp

# Part C.
# Use an appropriate R function to tell you the complete structure of comp

# MY ANSWER:
str(comp)

# Part D. 
# What class of object is comp?

# MY ANSWER IS BELOW:
class_comp <- class(comp)
# print out the class of object comp below : this is a data.frame
class_comp

################################################################################

##############
# QUESTION 4 #
##############
# MY ANSWER:
# Reading piedata.csv using read.table
# Assuming that the file is in the same folder as your R script or notebook
pie <- read.table("piedata.csv", header = TRUE, sep = ",")
pie
# Part B.
# Use an appropriate R function to tell you how many rows and columns
# are in the pie object

# MY ANSWER:
number_of_rows_in_pie <- nrow(pie)
number_of_columnsin__pie <- ncol(pie)

# Print the number of rows and columns in the pie object
# the number of row in pie are shown below
number_of_rows_in_pie
# the number or collums in pie are shown below
number_of_columnsin__pie

# Part C.
# Use an appropriate R function to tell you the complete structure of pie

# MY ANSWER:
str(pie)

# PART D.
# what is the class of object pie
pie_class<- class(pie)
pie_class  # this prints out as  data.frame

# Part E.
# Use an appropriate R function to write the object 'pie' back into the
# C:/temp directory under the new file name "mypiedata.csv".

# MY ANSWER:
write.csv(pie, file = "C:/temp/mypiedata.csv", row.names = FALSE) # writing it

# to verify find the file and print it out
pie_rewritten <- read.table("mypiedata.csv", header = TRUE, sep = ",")
pie_rewritten

# PART F.
# Open the file 'mypiedata.csv' in excel. Does it look different from
# 'piedata.csv' when opened in excel? Yes or no? If 'Yes' what is different?
# Why do you think this happened ?


# MY ANSWER: No. I opened both of these files up inside of excel one after 
#       another and i carefully scrutinized both files ad there is no difference   
#           in the two the collum names are both the same and the values as well
#           and the rows are the exact same. This happened because all it did
#           was create a new csv file and wrote the exact same contents from pie
#            to the newly created same as in a terminal company cp -> which 
#            copys the data and then using mv you move the file to new file
#            whch just recreates the data since you are writing the same data
#            there will be no change unless some manipulation of data took place

################################################################################
## Part 2: Manipulating Numbers and Vectors
################################################################################

# Part A
# Create a numeric vector 'w' consisting of 10 real numbers between 0 and 10.
# Each vector element must have a different value:

# MY ANSWER:
w <- c(1, 3, 5, 7, 2, 9, 0, 4, 8, 6)
# print out the numeric vector W below
w
################################################################################

# Part B.
# Sort the vector. Is each element value unique?

# MY ANSWER:
w_sorted <- sort(w)
bool_w_values_are_unique <- length(unique(w_sorted)) == length(w_sorted)
# if the return balue of the bool expression returns back true then they
# are all unique if returns false then they are not
bool_w_values_are_unique # returns back true
################################################################################

# Part C.
# Using the indexes (or subscripts) of w only, create a new vector 'g'
# that contains the first 3 elements of 'w' and the 5th, 6th and 7th
# elements of 'w' in that order. Do not use those element values.

# MY ANSWER:
g <- w[c(1, 2, 3, 5, 6, 7)] # get the values are index value for 1,2,3 and then
                            # the 5,6,7 in the vector w without using the act.
                            # element values 
# print out the vector 'g'
g
################################################################################

# PART D.
# Create a new vector 'a' that contains the reciprocal of each 'g' vector
# element value.

# MY ANSWER:
# reciprocal is below 1 so
# MY ANSWER:
a <- 1 / g
# print out the vector 'a'
a # prints out [1] 1.0000000 0.3333333 0.2000000 0.5000000 0.1111111       Inf
################################################################################

# Part E.
# Create a character vector 'nms' consisting of the character strings
# "first" "second" "third" "fourth" "fifth" "sixth"

# MY ANSWER:
nms <- c("first", "second", "third", "fourth", "fifth", "sixth")
nms # print otu the character vector nms
################################################################################

# Part F.
# Write and execute a command in R that will assign these string values as the
# names of the elements in g.

# MY ANSWER:
names(g)
names(g) <- nms
names(g)
################################################################################

# Part G. Part 1
# Use the 'trees' data frame for this last exercise:

# My ANSWER:
data(trees)
trees # print out the trees dataframe looks something like below
# Girth Height Volume
#1    8.3     70   10.3
#2    8.6     65   10.3
#3    8.8     63   10.2
#4   10.5     72   16.4
#5   10.7     81   18.8
# and several more rows

# Part G part 2
# How many rows and columns in trees?

# MY ANSWER:
number_tree_rows<-nrow(trees)
number_tree_cols<-ncol(trees)
# the number of rows in the trees data frame is below ->31 rows
number_tree_rows
# the number of cols in the trees data frame is below -> 3 collums
number_tree_cols

# Part G part 3
# Use the order() function to sort THE ENTIRE DATA FRAME by the values in the
# 'Height' column. NOTE: You do NOT use the sort() function anywhere in this
# exercise

# MY ANSWER:
# we use the order function to et the indice that necessary to sort the height
# col and does that in ascendin order, which is used to reorder the data frame
# trees and then returns the whole data frame not just the sorted
trees_sorted <- trees[order(trees$Height), ]
# print out befor and after

# print before the ordered heght
trees
# print after the ordered height
trees_sorted
################################################################################




 
