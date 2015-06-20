# Coursers-Getting-and-Cleaning-Data-Final-Project
Final project repository for Getting and Cleaning Data class
==================================================================
Script for Coursera "Getting and Cleaning Data" class final project
Class Start Date: June 1, 2015
Prepared by: Teddy Chu
Contact Email: teddychu822@yahoo.com
==================================================================

The R script, run_analysis.R, performs the following steps

1) Load the dplyr and tidry packages

2) Read all the Samsung data set into their respective data frames
 The X_test and X_train data frames contain the measurements
 The Y_test and Y_train data frames contain the activities
 The features data frame cotnains the header names of test and train
 The Sub_test and Subj_train data frames contains the subject being tested
   for the respective test or train data set

3) Update the header names of both the test and train dataframes.
 The header names are read into the "features" data frame in step 2.
 The name in features is stored as Factor and has to be converted to character
 Add a column "CName" to features, and assign it as names of headers of
 both the train and test data frame

4) Add the Subject column into the Test and Train data. 
  Each test Subject is represented by a number. Use cbind to add 
  the Subject column into the test and train dataframes.
  Also, change the Subject into factor for easy grouping later on.

5) Create an 6 x 2 Activities mapping table, Act_Label.
  This table has two columns: 
	V1: contains the indiex from 1 to 6
	Activities: contains the descriptive name of the activities

6) Merge the Activities into the Y_test and Y_train table
  Because we name the first column of the mapping table in step 5
  as "V1" which is the same name as the column in Y_test and Y_train,
  the merge function uses the V1 column as index and merge the two
  tables together.

7) Add the Activities columns from Y to X
  The Y_test and Y_train tables now contain the list of activities 
  corresponding to each of the row in the X_test and X_train 
  measurements. Simply add the Activities column from Y into the first
  column of X using the data.frame function. 
  
8) Combine the test and train data frames
  The rbind function is used to combine the two data frames. 

9) Extract only the variables that contain the mean or standard deviation
  The names of each of the measurements indicate if the measurement is
  related to mean or standard deviation. Using the regular expression
  "mean\\.\\.|std\\.\\." to extract any column with name that contains
  either the word "mean.." or "std..". The ".." replaces non-alpha numeric
  character, i.e., "()" when the X_test and X_train were created.
  and X_train tables were read into the data frame. 

10) Summarize the data by Subject and Activities
  The chain functions first group the data by Subject and Activities.
  Then using the summarise_each function in the dplyr package, we calculate
  the average of all the remaining variables in the data frame. The result
  is stored into a new data frame called "df_final"

11) Rename data frame columns
  The remaining columns now contain the Average of the original data set
  Rename the column names by adding the word "Avg-" as prefix indicating
  that these are average values

12) Write the final data frame into a file
  Use the write.table function to output the final data frame into the
